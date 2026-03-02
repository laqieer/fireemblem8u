# Banim TSA & Img Preservation Report

## Objective
The initial goal was to determine if the raw binary `.tsa` (Tile Screen Arrangement) and `.4bpp` (image tiles) assets located in `graphics/banim/assets/` could be safely deleted from the repository. The hypothesis was that these assets could be dynamically reconstructed from source `.png` files during the build process using the `tsa_generator.py` tool.

## Exploration Process
1. **Initial Testing:**
   We attempted to recreate specific `.tsa` and `.4bpp` files using `tsa_generator.py` (Method 1). We immediately noticed significant size mismatches. Method 1 strictly outputs 8192 bytes (256 tiles) for images, whereas the original `.4bpp` files vary widely in size (e.g., 372 bytes, 2548 bytes, 5032 bytes).

2. **Automated Batch Verification:**
   To comprehensively test the viability of asset regeneration, we developed a batch round-trip testing script (`batch_tsa_full_test.py`). 
   - The script parsed `data_banim.s` to resolve the mapping between each TSA, its preceding image (`.4bpp`), and its palette (`.gbapal`).
   - For each TSA, it reconstructed a `.png` file using the original binary assets.
   - It then fed the reconstructed `.png` into `tsa_generator.py` to generate a new `.tsa` and `.4bpp`.
   - Finally, it compared the generated files against the original binaries.

3. **Batch Test Results:**
   - Total `.tsa` files analyzed: 832
   - Successfully tested for round-tripping: 786
   - **Perfect Matches: 0**
   - **Total Mismatches (Must Keep): 786**
   - Alarmingly, 679 out of the 786 tested files had a **100% mismatch** in their TSA entries.

4. **Deep Dive Analysis:**
   To understand *why* the mismatches were so absolute, we isolated a specific failure case: `005E64D8_Tsa_085E64D8.tsa` mapped to `005E5AE4_Img_DarkBreathBg.4bpp.lz`.
   - We extracted the data and wrote a custom script (`test_preserve_tsa.py`) to analyze the tile usage.
   - **Finding:** The original image contained 160 unique tiles, but `Tsa_085E64D8` only used 37 of them. Furthermore, the tile IDs used in the TSA were non-sequential (e.g., jumping from ID 4 to 11, leaving IDs 1, 2, 3 unused by this specific TSA).

## Root Cause Discovery
By reviewing `data/data_banim.s`, the architectural reason for the failure became clear:
```assembly
.global Img_DarkBreathBg
Img_DarkBreathBg:  @ 0x085E5AE4
	.incbin "./graphics/banim/assets/img/005E5AE4_Img_DarkBreathBg.4bpp.lz"

	.global Tsa_085E64D8
Tsa_085E64D8:  @ 0x085E64D8
	.incbin "./graphics/banim/assets/tsa/005E64D8_Tsa_085E64D8.tsa.lz"

	.global Tsa_085E65C0
Tsa_085E65C0:  @ 0x085E65C0
	.incbin "./graphics/banim/assets/tsa/005E65C0_Tsa_085E65C0.tsa.lz"
```
The Battle Animations (banim) utilize a **Multi-to-One** relationship. Multiple TSA files (representing individual animation frames) share a single, global `.4bpp` image tileset. 

The current `tsa_generator.py` operates on a strict **One-to-One** paradigm. When given a single PNG frame, it extracts only the tiles used in that specific frame, renumbers them starting from 0, and generates a new, isolated tileset and TSA. It inherently discards tiles needed by other frames and destroys the shared tile ID mappings.

## Decision
To support dynamic generation from PNGs, the graphics toolchain would require a massive overhaul to analyze multiple PNG frames simultaneously, build a shared tileset, and output synchronized TSAs preserving sparse ID mappings.

**Conclusion:** Under the current build architecture, the `.tsa` and `.4bpp` files in `graphics/banim/assets/` are **truly non-regeneratable binary assets**. 

**Action:** These assets must be preserved in the repository. They cannot be safely deleted or replaced by PNG-based generation flows at this time.

## Validation: Comparison with `pokeemerald`
To ensure our conclusion aligns with established GBA decompilation practices, we investigated the `pret/pokeemerald` repository (a highly mature GBA decomp project) to see how they handle equivalent background layouts (Tilemaps / map `.bin` files).

### Findings from `pokeemerald`
1. **Raw Binary Retention:** The project retains tilemap files as raw `.bin` assets in the `graphics/` directory. They are committed directly to the repository alongside `.png` tilesets.
2. **One-Way Tooling:** Their graphics conversion tool (`tools/gbagfx`) includes a `-tilemap` flag. However, analyzing the C source code (`main.c` and `gfx.c`) reveals this flag is used **exclusively for decoding**. It reads the `.bin` tilemap to reconstruct a complete `.png` image for human viewing. 
3. **No Encoding Capability:** There is no `WriteTilemap` function in `gbagfx`. The tool completely lacks the ability to take a flat `.png` image and parse it back into a compressed tileset `.4bpp` and a layout map `.bin`.
4. **Build Process:** The `Makefile` rules only handle `.png` -> `.4bpp` (pixel format conversion) and LZ77 compression. The `.bin` tilemaps are bypassed in the build pipeline and simply included via `.incbin` in assembly files.

### Final Verification
The architectural approach in `pokeemerald` validates our findings. Tilemaps (or TSAs) contain explicit hardware layout instructions (10-bit tile index, hflip, vflip, 4-bit palette number). Because a single `.png` cannot implicitly define shared tileset boundaries or exact hardware attributes without loss of original mapping, preserving the binary TSA data is the correct and standard methodology.
