# Fire Emblem 8U Quick Start

Get a working build of this decompilation with a single command.

## Prerequisites

- A legally obtained copy of **Fire Emblem: The Sacred Stones (USA)**. Place it at the repo root as `baserom.gba`, or provide a path via `--rom /path/to/rom.gba` or `FIREEMBLEM8U_ROM=/path/to/rom.gba` when running the script.
- Ubuntu/WSL, Arch/pacman, or macOS/Homebrew with sudo/admin access. The script auto-detects these package managers.
- ~2.5 GB of free disk space and up to 15 minutes for the first full build.

## One-command setup

From the repo root, run:

```bash
./scripts/quickstart.sh [--rom /path/to/baserom.gba]
```

What the script now does:

1. Ensures `baserom.gba` exists. If missing, it copies from the provided `--rom` path (or `FIREEMBLEM8U_ROM`).
2. Detects your package manager (`apt`, `pacman`, or `brew`) and installs the prerequisites only when they’re not already available:
   - Toolchain (`arm-none-eabi-binutils`/`arm-none-eabi-gcc`)
   - `pkg-config` / `pkgconf`
   - `libpng`
   - `python3`, `pip3`, `numpy`, `pillow`
3. Clones and builds [`pret/agbcc`](https://github.com/pret/agbcc) inside `.deps/agbcc` (ignored by git) if it isn’t already present (or updates it to the latest `master`), then installs it into `tools/agbcc`.
4. Builds helper tools via `./build_tools.sh`.
5. Runs `make -j$(nproc)` to produce `fireemblem8.gba`.
6. Verifies the ROM hash with `sha1sum -c checksum.sha1`.

On success you’ll see:

```
fireemblem8.gba: OK
[✓] Build complete: /path/to/fireemblem8u/fireemblem8.gba
```

## Troubleshooting

- **Missing ROM** – Provide `--rom /path/to/rom.gba` or set `FIREEMBLEM8U_ROM=/path/to/rom.gba` when running the script.
- **Unsupported distro** – Install the prerequisites manually (arm-none-eabi toolchain, pkg-config, libpng, python3, pip, numpy, pillow) then rerun the script; it’ll skip package installs once the tools are on your PATH.
- **Already-installed toolchain** – The script detects `arm-none-eabi-*` binaries and skips reinstalling them.
- **Slower rebuilds** – Subsequent `make` runs are faster. For incremental work, run `make -j$(nproc)` manually.

After the script finishes, launch your preferred emulator with `fireemblem8.gba` or start modifying the source.
