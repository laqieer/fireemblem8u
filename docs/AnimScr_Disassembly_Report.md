# AnimScr Disassembly Report

## Objective
Disassemble the two binary files in `graphics/banim/assets/animscr/` into labeled assembly source files (similar to `data/banim/banim_arcf_ar1_2_motion.s`), resolving internal pointers to symbolic labels.

## Files Analyzed
| File | ROM Address | Size | Description |
|------|------------|------|-------------|
| `007219FC_AnimScr_NaglfarBG4.bin` | 0x087219FC | 6156 bytes | OAM sprite arrays + AnimScr script |
| `00723208_AnimScr_DarkBreath_Far.bin` | 0x08723208 | 108 bytes | AnimScr script only |

## Exploration Process

### Step 1: Initial Format Analysis
Attempted to parse both files as pure AnimScr scripts (4-byte instruction stream). The first file didn't parse correctly as a script because it starts with OAM sprite data, not script commands.

### Step 2: Pointer Cross-Reference Discovery
Scanning `AnimScr_DarkBreath_Far.bin` for `ANIMSCR_FORCE_SPRITE` pointers revealed that all 26 sprite pointers (e.g., `0x08722638`, `0x08722650`, ..., `0x087231CC`) point to addresses **inside** `AnimScr_NaglfarBG4.bin`. This means the two files are not independent — `DarkBreath_Far`'s OAM sprite data is physically stored within the `NaglfarBG4` blob.

### Step 3: Internal Structure Mapping
By analyzing both files' pointer targets, the internal structure of `NaglfarBG4.bin` was determined:

```
0x087219FC ┌─────────────────────────────────┐
           │ OAM Sprite Arrays (NaglfarBG4)  │  26 arrays, 12 bytes/entry
           │ (referenced by NaglfarBG4 script)│
0x087225CC ├─────────────────────────────────┤
           │ AnimScr Script (NaglfarBG4)      │  26 FORCE_SPRITE + BLOCKED
           │ (no code references found)       │
0x08722638 ├─────────────────────────────────┤
           │ OAM Sprite Arrays (DarkBreath)   │  26 arrays, 12 bytes/entry
           │ (referenced by DarkBreath script) │
0x08723208 └─────────────────────────────────┘
           ┌─────────────────────────────────┐
           │ AnimScr Script (DarkBreath_Far)  │  26 FORCE_SPRITE + BLOCKED
           │ (used by EfxCreateFrontAnim)     │
0x08723274 └─────────────────────────────────┘
```

### Step 4: OAM Entry Format
Each OAM entry is 12 bytes. Two formats exist, distinguished by the second short:

1. **`ANIM_SPRITE oam0, oam1, oam2, x, y`** → `.short oam0, oam1, oam2, x, y, 0` (oam1 ≠ 0xFFFF)
2. **`ANIM_SPRITE_AFFIN cnt, pa, pb, pc, pd`** → `.short cnt, 0xFFFF, pa, pb, pc, pd` (oam1 == 0xFFFF)
3. **`ANIM_SPRITE_END`** → `.short 1, 0, 0, 0, 0, 0` (terminator)

Initial parsing incorrectly treated `ANIM_SPRITE_AFFIN` entries as `ANIM_SPRITE` with non-zero padding, causing 266 byte mismatches. After fixing the format detection, all OAM data matches perfectly.

### Step 5: Label Resolution via LD Map
Checked `fireemblem8.map` for symbols within the address range:
- `0x087219FC` → `AnimScr_NaglfarBG4` (only existing label)
- `0x08723208` → `AnimScr_DarkBreath_Far` (only other label)
- All 52 OAM array addresses (26 for Naglfar + 26 for DarkBreath) have **no existing labels** in the map. New labels were created: `AnimSpr_NaglfarOBJ_0..24` and `AnimSpr_DarkBreathOBJ_0..25`.

### Step 6: Code Usage Analysis
- **`AnimScr_NaglfarBG4`**: NOT referenced by any C/ASM source code. The NaglfarBG4 spell effect uses `ImgArray_NaglfarBg4`, `TsaArray_NaglfarBg4`, and `Pal_NaglfarBg4` for BG animation, driven by `efxNaglfarBG4_Loop`. The AnimScr at 0x087225CC may be unused or referenced indirectly.
- **`AnimScr_DarkBreath_Far`**: Used by `EfxCreateFrontAnim()` in `src/banim-efxmagic-breath.c` for the Dark Breath spell's far-distance OBJ animation.

### Step 7: Assembly Verification
The generated `.s` file was assembled and compared against the original binaries:
- **OAM data (NaglfarBG4 region, 0x0-0xBD0)**: ✅ Perfect byte-for-byte match
- **OAM data (DarkBreath region, 0xC3C-0x180C)**: ✅ Perfect byte-for-byte match  
- **Script sections**: Expected mismatch — labels assemble to 0 in the `.o` file and require linking (via `arm_compressing_linker.py`) to resolve to final ROM addresses.

## Build Integration
To replace the `.incbin` with the `.s` source file, the assembly → linking process follows the same pattern as `banim_arcf_ar1_2_motion.s`:

1. Assemble: `arm-none-eabi-as → .o`
2. Extract section: `arm-none-eabi-objcopy -O binary -j .data → .bin`
3. Link with `arm_compressing_linker.py` (resolves label relocations to ROM addresses, optionally LZ-compresses)
4. Add entry to `linker_script_banim.txt`

## Output
Generated file: `data/banim/animscr_naglfarbg4_darkbreath.s`

This file contains the complete disassembly of both AnimScr binaries with:
- All 52 OAM sprite arrays with proper `ANIM_SPRITE`, `ANIM_SPRITE_AFFIN`, and `ANIM_SPRITE_END` macros
- Both AnimScr scripts using `ANIMSCR_FORCE_SPRITE` with symbolic label references
- Structural comments documenting the ROM layout
