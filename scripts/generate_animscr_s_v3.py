#!/usr/bin/env python3
"""
Disassemble AnimScr binary files into .s assembly source.
"""
import struct

MAP_FILE = "fireemblem8.map"
BASE = 0x087219FC
DARK_BASE = 0x08723208

symbols = {}
with open(MAP_FILE) as f:
    for line in f:
        line = line.strip()
        if line.startswith("0x08"):
            parts = line.split()
            if len(parts) >= 2:
                symbols[int(parts[0], 16)] = parts[1]

data1 = open("graphics/banim/assets/animscr/007219FC_AnimScr_NaglfarBG4.bin", "rb").read()
data2 = open("graphics/banim/assets/animscr/00723208_AnimScr_DarkBreath_Far.bin", "rb").read()

NAGLFAR_SCRIPT_START = 0xBD0
NAGLFAR_SCRIPT_END = 0xC3C

def collect_ptrs(data, start, end):
    ptrs = []
    off = start
    while off + 4 <= end:
        val = struct.unpack_from('<I', data, off)[0]
        off += 4
        if (val & 0x80000000) == 0 and val != 0:
            ptr = val & 0x08FFFFFC
            if BASE <= ptr < DARK_BASE:
                ptrs.append(ptr)
        elif val == 0x80000000:
            break
    return ptrs

naglfar_ptrs = collect_ptrs(data1, NAGLFAR_SCRIPT_START, NAGLFAR_SCRIPT_END)
darkbreath_ptrs = collect_ptrs(data2, 0, len(data2))
all_oam_ptrs = sorted(set(naglfar_ptrs + darkbreath_ptrs))

oam_labels = {}
n_idx = 0
d_idx = 0
for p in all_oam_ptrs:
    if p in symbols:
        oam_labels[p] = symbols[p]
    elif p < BASE + NAGLFAR_SCRIPT_START:
        oam_labels[p] = f"AnimSpr_NaglfarOBJ_{n_idx}"
        n_idx += 1
    else:
        oam_labels[p] = f"AnimSpr_DarkBreathOBJ_{d_idx}"
        d_idx += 1

if BASE in oam_labels:
    oam_labels[BASE] = "AnimScr_NaglfarBG4"

out = []
def p(s=""):
    out.append(s)

def emit_oam_entries(data, start_off, end_off):
    """Emit 12-byte OAM entries (ANIM_SPRITE or ANIM_SPRITE_AFFIN or ANIM_SPRITE_END)."""
    off = start_off
    while off + 12 <= len(data) and off < end_off:
        vals = struct.unpack_from('<6H', data, off)
        v0, v1, v2, v3, v4, v5 = vals
        off += 12
        
        # ANIM_SPRITE_END: .short 1, 0, 0, 0, 0, 0
        if v0 == 1 and v1 == 0 and v2 == 0 and v3 == 0 and v4 == 0 and v5 == 0:
            p("\tANIM_SPRITE_END")
            return off
        
        # ANIM_SPRITE_AFFIN: .short cnt, 0xFFFF, pa, pb, pc, pd
        if v1 == 0xFFFF:
            p(f"\tANIM_SPRITE_AFFIN {v0}, 0x{v2:X}, 0x{v3:X}, 0x{v4:X}, 0x{v5:X}")
            continue
        
        # ANIM_SPRITE: .short oam0, oam1, oam2, x, y, 0
        x = struct.unpack_from('<h', struct.pack('<H', v3))[0]
        y = struct.unpack_from('<h', struct.pack('<H', v4))[0]
        if v5 != 0:
            p(f"\t@ WARNING: non-zero padding 0x{v5:X}")
        p(f"\tANIM_SPRITE 0x{v0:X}, 0x{v1:X}, 0x{v2:X}, {x}, {y}")
    return off

def emit_script(data, label, labels_map, is_global=True):
    if is_global:
        p(f".global {label}")
    p(f"{label}:")
    off = 0
    while off + 4 <= len(data):
        val = struct.unpack_from('<I', data, off)[0]
        off += 4
        if (val & 0x80000000) == 0:
            time1 = val & 3
            time2 = (val >> 26) & 0x1C
            time = time1 | time2
            ptr = val & 0x08FFFFFC
            lbl = labels_map.get(ptr, f"0x{ptr:08X}")
            p(f"\tANIMSCR_FORCE_SPRITE {lbl}, {time}")
        elif val == 0x80000000:
            p("\tANIMSCR_BLOCKED")
            break
        else:
            ins = (0x7F000000 & val) >> 24
            if ins == 4:
                p(f"\tANIMSCR_WAIT {val & 0x00FFFFFF}")
            elif ins == 1:
                p("\tANIMSCR_DISABLED")
                break
            elif ins == 2:
                p("\tANIMSCR_LOOP")
                break
            else:
                p(f"\t.word 0x{val:08X}")

p("@ vim:ft=armv4")
p("@ Auto-generated disassembly of AnimScr_NaglfarBG4 + AnimScr_DarkBreath_Far")
p("@ Original ROM: 0x087219FC - 0x08723274")
p("@")
p("@ Structure of the data blob:")
p("@   0x087219FC-0x087225CC: OAM sprite arrays (NaglfarBG4)")
p("@   0x087225CC-0x08722638: AnimScr script (NaglfarBG4, possibly unused)")
p("@   0x08722638-0x08723208: OAM sprite arrays (DarkBreath_Far)")
p("@   0x08723208-0x08723274: AnimScr script (DarkBreath_Far)")
p()
p('.include "animscr.inc"')
p('.include "gba_sprites.inc"')
p()
p(".section .data")
p()

# Emit NaglfarBG4 OAM arrays
p("@ === OAM Sprite Arrays (NaglfarBG4) ===")
p()
naglfar_oam = [x for x in all_oam_ptrs if x < BASE + NAGLFAR_SCRIPT_START]
for i, ptr in enumerate(naglfar_oam):
    off = ptr - BASE
    next_off = naglfar_oam[i+1] - BASE if i < len(naglfar_oam)-1 else NAGLFAR_SCRIPT_START
    label = oam_labels[ptr]
    p(f".global {label}")
    p(f"{label}: @ 0x{ptr:08X}")
    emit_oam_entries(data1, off, next_off)
    p()

# Emit NaglfarBG4 script
p("@ === AnimScr (NaglfarBG4 OBJ - no code references found) ===")
p()
emit_script(data1[NAGLFAR_SCRIPT_START:NAGLFAR_SCRIPT_END], 
            "AnimScr_NaglfarBG4_OBJ", oam_labels, is_global=True)
p()

# Emit DarkBreath OAM arrays
p("@ === OAM Sprite Arrays (DarkBreath_Far) ===")
p()
dark_oam = [x for x in all_oam_ptrs if x >= BASE + NAGLFAR_SCRIPT_END]
for i, ptr in enumerate(dark_oam):
    off = ptr - BASE
    next_off = dark_oam[i+1] - BASE if i < len(dark_oam)-1 else len(data1)
    label = oam_labels[ptr]
    p(f".global {label}")
    p(f"{label}: @ 0x{ptr:08X}")
    emit_oam_entries(data1, off, next_off)
    p()

# Emit DarkBreath_Far script
p("@ === AnimScr_DarkBreath_Far ===")
p()
emit_script(data2, "AnimScr_DarkBreath_Far", oam_labels)
p()

print("\n".join(out))
