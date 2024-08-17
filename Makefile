#### Tools ####

CC1        := agbcc
CC1_OLD    := old_agbcc
PREFIX     := arm-none-eabi-
CPP        := $(PREFIX)cpp
AS         := $(PREFIX)as
LD         := $(PREFIX)ld
OBJCOPY    := $(PREFIX)objcopy
STRIP      := $(PREFIX)strip
BIN2C      := bin2c
GBAGFX     := gbagfx
SCANINC    := scaninc
AIF2PCM    := aif2pcm
MID2AGB    := mid2agb
TEXTENCODE := textencode
JSONPROC   := jsonproc

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm -ffix-debug-line -g
CPPFLAGS := -iquote include -iquote . -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I include

#### Files ####

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_SUBDIR = data
DATA_SRC_SUBDIR = src/data
SAMPLE_SUBDIR = sound/direct_sound_samples
MID_SUBDIR = sound/songs/midi

ROM          := fireemblem8.gba
ELF          := $(ROM:.gba=.elf)
MAP          := $(ROM:.gba=.map)
LDSCRIPT     := ldscript.txt
SYM_FILES    := sym_iwram.txt
CFILES_GENERATED := $(C_SUBDIR)/msg_data.c
CFILES       := $(wildcard $(C_SUBDIR)/*.c)
ifeq (,$(findstring $(CFILES_GENERATED),$(CFILES)))
CFILES       += $(CFILES_GENERATED)
endif
ASM_S_FILES  := $(wildcard $(ASM_SUBDIR)/*.s)
SRC_S_FILES  := $(wildcard $(C_SUBDIR)/*.s)
DATA_S_FILES := $(wildcard $(DATA_SUBDIR)/*.s)
SOUND_S_FILES := $(wildcard sound/*.s sound/songs/*.s sound/songs/mml/*.s sound/voicegroups/*.s)
SFILES       := $(ASM_S_FILES) $(SRC_S_FILES) $(DATA_S_FILES) $(SOUND_S_FILES)
SFILES_COMPILED := $(CFILES:.c=.s)
C_OBJECTS    := $(CFILES:.c=.o)
ASM_OBJECTS  := $(SFILES:.s=.o)
BANIM_OBJECT := data/banim/data_banim.o
MID_FILES    := $(wildcard $(MID_SUBDIR)/*.mid)
MID_OBJECTS  := $(MID_FILES:.mid=.o)
ALL_OBJECTS  := $(C_OBJECTS) $(ASM_OBJECTS) $(BANIM_OBJECT) $(MID_OBJECTS)
OBJECTS_LST  := objects.lst
DEPS_DIR     := .dep

AUTO_GEN_TARGETS :=

# Use the older compiler to build library code
src/agb_sram.o: CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O1 -ffix-debug-line -g
src/m4a.o: CC1 := $(CC1_OLD)

# TODO: find a more elegant solution to the inlining issue
src/bmitem.o: CC1FLAGS += -Wno-error

#### Main Targets ####

compare: $(ROM)
	sha1sum -c checksum.sha1

.PHONY: compare

clean:
	$(RM) $(ROM) $(ELF) $(MAP) $(ALL_OBJECTS) $(OBJECTS_LST) $(SFILES_COMPILED) graphics/*.h $(CFILES_GENERATED)
	$(RM) -rf $(DEPS_DIR)
	# Remove battle animation binaries
	$(RM) -f data/banim/*.bin data/banim/*.o data/banim/*.lz data/banim/*.bak
	# Remove converted sound samples
	$(RM) -f $(SAMPLE_SUBDIR)/*.bin
	# Remove converted songs
	$(RM) -f $(MID_SUBDIR)/*.s
	$(RM) -f $(AUTO_GEN_TARGETS)
	find . \( -iname '*.o' -o -iname '*.obj' -o -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.fk' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +

.PHONY: clean

tag:
	gtags
	ctags -R
	cscope -Rbkq

.PHONY: tag

# Graphics Recipes

include graphics_file_rules.mk
include songs.mk
include json_data_rules.mk

%.s: ;
%.png: ;
%.pal: ;
%.aif: ;

%.1bpp: %.png  ; $(GBAGFX) $< $@
%.4bpp: %.png  ; $(GBAGFX) $< $@
%.8bpp: %.png  ; $(GBAGFX) $< $@
%.gbapal: %.pal ; $(GBAGFX) $< $@
%.gbapal: %.png ; $(GBAGFX) $< $@
%.lz: % ; $(GBAGFX) $< $@
%.rl: % ; $(GBAGFX) $< $@
%.fk: % ; ./scripts/compressor.py $< fk
sound/%.bin: sound/%.aif ; $(AIF2PCM) $< $@

%.4bpp.h: %.4bpp
	$(BIN2C) $< $(subst .,_,$(notdir $<)) | sed 's/^const //' > $@

# Battle Animation Recipes

$(BANIM_OBJECT): $(shell ./scripts/arm_compressing_linker.py -t linker_script_banim.txt -m)
	./scripts/arm_compressing_linker.py -o $@ -t linker_script_banim.txt -b 0x8c02000 -l $(LD) --objcopy $(OBJCOPY) -c ./scripts/compressor.py

%_modes.bin: %_motion.o
	$(OBJCOPY) -O binary -j .data.modes $< $@

%_oam_l.bin: %_motion.o
	$(OBJCOPY) -O binary -j .data.oam_l $< $@

%_oam_r.bin: %_motion.o
	$(OBJCOPY) -O binary -j .data.oam_r $< $@

#### Recipes ####

# Automatic dependency generation
MAKEDEP = mkdir -p $(DEPS_DIR)/$(dir $*) && $(CPP) $(CPPFLAGS) $< -MM -MG -MT $*.o > $(DEPS_DIR)/$*.d

-include $(addprefix $(DEPS_DIR)/,$(CFILES:.c=.d))

$(DEPS_DIR)/%.d: %.c
	@$(MAKEDEP)

$(OBJECTS_LST): $(ALL_OBJECTS)
	@echo $(ALL_OBJECTS) > $@

$(ELF): $(ALL_OBJECTS) $(OBJECTS_LST) $(LDSCRIPT) $(SYM_FILES)
	$(LD) -T $(LDSCRIPT) -Map $(MAP) @$(OBJECTS_LST) -R $(BANIM_OBJECT).sym.o -L /usr/local/bin/agbcc/lib -o $@ -lc -lgcc
	$(STRIP) -N .gcc2_compiled. $@

%.gba: %.elf
	$(OBJCOPY) --strip-debug -O binary --pad-to 0x9000000 --gap-fill=0xff $< $@

# Generate msg_data.c
src/msg_data.c: msg_list.txt
	$(TEXTENCODE) $< $@

$(C_OBJECTS): %.o: %.c $(DEPS_DIR)/%.d
	@$(MAKEDEP)
	$(CPP) $(CPPFLAGS) $< | gnu-iconv -f UTF-8 -t CP932 | $(CC1) $(CC1FLAGS) -o $*.s
	echo '.ALIGN 2, 0' >> $*.s
	sed -i '/.section	.debug_line/i\.align 2, 0' $*.s
	$(AS) $(ASFLAGS) $*.s -o $@

ifeq ($(NODEP),1)
asm/%.o:      data_dep :=
else
asm/%.o:      data_dep = $(shell $(SCANINC) -I include -I "" $*.s)
endif

ifeq ($(NODEP),1)
src/%.o:      data_dep :=
else
src/%.o:      data_dep = $(shell $(SCANINC) -I include -I "" $*.s)
endif

ifeq ($(NODEP),1)
data/%.o:     data_dep :=
else
data/%.o:     data_dep = $(shell $(SCANINC) -I include -I "" $*.s)
endif

ifeq ($(NODEP),1)
banim/%.o:    data_dep :=
else
banim/%.o:    data_dep = $(shell $(SCANINC) -I include -I "" $*.s)
endif

ifeq ($(NODEP),1)
sound/%.o:    data_dep :=
else
sound/%.o:    data_dep = $(shell $(SCANINC) -I include -I "" $*.s)
endif

.SECONDEXPANSION:
$(ASM_OBJECTS): %.o: %.s $$(data_dep)
	$(AS) $(ASFLAGS) -g $< -o $@

# Don't delete intermediate files
.SECONDARY:

# debug print, to use, call "make print-(your label here)"
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
