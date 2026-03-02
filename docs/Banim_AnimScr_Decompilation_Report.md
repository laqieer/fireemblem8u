# Banim AnimScr Decompilation & Linker Pipeline Report

## 1. Overview
As part of the effort to remove uncompiled binary blobs (`.bin`) from the Fire Emblem 8 ROM decompilation project, we targeted two battle animation scripts:
* `007219FC_AnimScr_NaglfarBG4.bin`
* `00723208_AnimScr_DarkBreath_Far.bin`

This document details the exploration of the project's custom build pipeline, the discovery of shared data structures between these binaries, and the process of successfully converting them to assembly source code (`.s`) that builds byte-for-byte identically to the original ROM.

## 2. The `arm_compressing_linker.py` Pipeline
During the investigation, we analyzed the project's custom compression workflow, which is primarily driven by `scripts/arm_compressing_linker.py` and configured via `linker_script_banim.txt`.

The pipeline functions as follows for typical animated assets (e.g., `banim_arcf_ar1_2_motion.s`):
1. **Compilation:** The `.s` file is assembled into an object file (`.o`).
2. **Extraction & Compression:** The Python script reads `linker_script_banim.txt`. If it encounters a directive like `file.o|section>lz`, it extracts the specified section (often `.data.script` or `.data.tsa`) and passes it through an external LZ77 compression tool.
3. **Relinking:** The newly compressed binary blob is re-wrapped into a standard object file. The Python script generates a new `.s` wrapper that `.incbin`s the compressed data and assigns it a symbol with an `_o` suffix (e.g., `banim_arcf_ar1_2_motion_o`).
4. **Integration:** The main linker handles this wrapper object, mapping the compressed asset to its final ROM destination.

## 3. Analysis of Naglfar & DarkBreath Scripts
Upon disassembling `NaglfarBG4` and `DarkBreath_Far`, two critical details emerged:

### 3.1 Shared OAM Arrays
The `DarkBreath_Far` script does not contain its own Object Attribute Memory (OAM) frame definitions. Instead, its animation script pointers reference memory addresses located *inside* the `NaglfarBG4` binary block (specifically between offsets `0xc3c` and `0x1808` of the Naglfar file). This meant they could not be safely disassembled in isolation without breaking label references.

### 3.2 Bypass of the Compression Pipeline
A review of `data/data_banim.s` revealed that these two scripts were included using standard `.incbin` directives without a `.lz` suffix. Because neither file was compressed in the original ROM, **the `arm_compressing_linker.py` pipeline was not required for them.**

## 4. The Solution: Direct Assembly Integration
Instead of forcing the files through the complex Python linker script, we opted for a native GNU Assembler approach:

1. **Unified Disassembly:** Both scripts and their shared OAM arrays were disassembled into a single file: `data/banim/animscr_naglfarbg4_darkbreath.s`. This allowed the DarkBreath script to natively reference the Naglfar OAM labels.
2. **Macro Translation:** Raw hexadecimal values were reverse-engineered and translated into standard human-readable macros from `include/animscr.inc` (such as `anim_sprite`, `ANIMSCR_FORCE_SPRITE`, and `animscr_loop`).
3. **Assembler Arithmetic:** The `ANIMSCR_FORCE_SPRITE` macro performs complex bitwise label math (`label + (time & 0x3) + ((time & 0x1C) << 26)`). Because we skipped the Python linker and directly included the `.s` file, the `arm-none-eabi-as` assembler seamlessly translated these calculations into standard `R_ARM_ABS32` relocations.
4. **Direct Include:** We replaced the `.incbin` commands in `data/data_banim.s` with a single `.include "data/banim/animscr_naglfarbg4_darkbreath.s"`.

## 5. Result
- The unreadable binary blobs (`007219FC_AnimScr_NaglfarBG4.bin` and `00723208_AnimScr_DarkBreath_Far.bin`) were completely deleted from the repository.
- The repository was successfully built using standard `make fireemblem8.gba -j`.
- Executing `sha1sum -c checksum.sha1` confirmed a 100% byte-for-byte match with the original ROM.

**Conclusion:** The Python `arm_compressing_linker.py` tool is strictly for handling assets that require LZ compression or isolated symbol-wrapping. For standard, uncompressed sequential data, combining related blocks into unified `.s` files and using `.include` natively resolves complex label arithmetic and produces a cleaner, identical build.