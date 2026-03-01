#!/usr/bin/env python3
"""
Disassemble AnimScr binary files into .s assembly source.
Structure:
  NaglfarBG4.bin (0x087219FC, 6156 bytes):
    [0x000-0xBCC] OAM sprite arrays for NaglfarBG4 script
    [0xBD0-0xC38] NaglfarBG4 script (unreferenced by code)
    [0xC3C-0x180C] OAM sprite arrays for DarkBreath_Far script
  DarkBreath_Far.bin (0x08723208, 108 bytes):
    [0x000-0x06C] DarkBreath_Far script
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

# Assign labels
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

# Override the first one to keep the existing label
if BASE in oam_labels:
    oam_labels[BASE] = "AnimScr_NaglfarBG4"

out = []
def p(s=""):
    out.append(s)

p("@ vim:ft=armv4")
p("@ Auto-generated disassembly of AnimScr_NaglfarBG4 + AnimScr_DarkBreath_Far")
p("@ Original ROM: 0x087219FC - 0x08723274")
p()
p('.include "animscr.inc"')
p('.include "gba_sprites.inc"')
p()
p(".section .data")
p()

# Emit OAM arrays before the script
p("@ === OAM Sprite Arrays (NaglfarBG4) ===")
p()
naglfar_oam = [p_ for p_ in all_oam_ptrs if p_ < BASE + NAGLFAR_SCRIPT_START]
for i, ptr in enumerate(naglfar_oam):
    off = ptr - BASE
    next_off = naglfar_oam[i+1] - BASE if i < len(naglfar_oam)-1 else NAGLFAR_SCRIPT_START
    label = oam_labels[ptr]
    p(f".global {label}")
    p(f"{label}: @ 0x{ptr:08X}")
    while off + 12 <= len(data1) and off < next_off:
        vals = struct.unpack_from('<HHHhhH', data1, off)
        oam0, oam1, oam2, x, y, pad = vals
        off += 12
        if oam0 == 1 and oam1 == 0 and oam2 == 0 and x == 0 and y == 0 and pad == 0:
            p("\tANIM_SPRITE_END")
            break
        else:
            p(f"\tANIM_SPRITE 0x{oam0:X}, 0x{oam1:X}, 0x{oam2:X}, {x}, {y}")
    p()

# Emit NaglfarBG4 script
p("@ === AnimScr (NaglfarBG4 OBJ - unreferenced by code) ===")
p()
p(".global AnimScr_NaglfarBG4_OBJ")
p(f"AnimScr_NaglfarBG4_OBJ: @ 0x{BASE + NAGLFAR_SCRIPT_START:08X}")
off = NAGLFAR_SCRIPT_START
while off < NAGLFAR_SCRIPT_END:
    val = struct.unpack_from('<I', data1, off)[0]
    off += 4
    if (val & 0x80000000) == 0:
        time1 = val & 3
        time2 = (val >> 26) & 0x1C
        time = time1 | time2
        ptr = val & 0x08FFFFFC
        lbl = oam_labels.get(ptr, f"0x{ptr:08X}")
        p(f"\tANIMSCR_FORCE_SPRITE {lbl}, {time}")
    elif val == 0x80000000:
        p("\tANIMSCR_BLOCKED")
        break
    else:
        ins = (0x7F000000 & val) >> 24
        if ins == 4:
            p(f"\tANIMSCR_WAIT {val & 0x00FFFFFF}")
        else:
            p(f"\t.word 0x{val:08X}")
p()

# Emit OAM arrays after the script (DarkBreath_Far sprites)
p("@ === OAM Sprite Arrays (DarkBreath_Far) ===")
p()
dark_oam = [p_ for p_ in all_oam_ptrs if p_ >= BASE + NAGLFAR_SCRIPT_END]
for i, ptr in enumerate(dark_oam):
    off = ptr - BASE
    next_off = dark_oam[i+1] - BASE if i < len(dark_oam)-1 else len(data1)
    label = oam_labels[ptr]
    p(f".global {label}")
    p(f"{label}: @ 0x{ptr:08X}")
    while off + 12 <= len(data1) and off < next_off:
        vals = struct.unpack_from('<HHHhhH', data1, off)
        oam0, oam1, oam2, x, y, pad = vals
        off += 12
        if oam0 == 1 and oam1 == 0 and oam2 == 0 and x == 0 and y == 0 and pad == 0:
            p("\tANIM_SPRITE_END")
            break
        else:
            p(f"\tANIM_SPRITE 0x{oam0:X}, 0x{oam1:X}, 0x{oam2:X}, {x}, {y}")
    p()

# Emit DarkBreath_Far script
p("@ === AnimScr_DarkBreath_Far ===")
p()
p(".global AnimScr_DarkBreath_Far")
p("AnimScr_DarkBreath_Far: @ 0x08723208")
off = 0
while off < len(data2):
    val = struct.unpack_from('<I', data2, off)[0]
    off += 4
    if (val & 0x80000000) == 0:
        time1 = val & 3
        time2 = (val >> 26) & 0x1C
        time = time1 | time2
        ptr = val & 0x08FFFFFC
        lbl = oam_labels.get(ptr, f"0x{ptr:08X}")
        p(f"\tANIMSCR_FORCE_SPRITE {lbl}, {time}")
    elif val == 0x80000000:
        p("\tANIMSCR_BLOCKED")
        break
    else:
        ins = (0x7F000000 & val) >> 24
        if ins == 4:
            p(f"\tANIMSCR_WAIT {val & 0x00FFFFFF}")
        else:
            p(f"\t.word 0x{val:08X}")
p()

result = "\n".join(out) + "\n"
print(result)
