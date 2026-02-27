# Fire Emblem 8U Quick Start

Get a working build of this decompilation with a single command.

## Prerequisites

- A legally obtained copy of **Fire Emblem: The Sacred Stones (USA)** placed at the repository root as `baserom.gba`.
- Ubuntu/WSL (or another Debian-based) environment with `sudo` access. The script installs required packages via `apt`.
- ~2.5 GB of free disk space and up to 15 minutes for the first full build.

## One-command setup

From the repo root, run:

```bash
./scripts/quickstart.sh
```

What the script does:

1. Verifies `baserom.gba` exists.
2. Installs required system dependencies:
   - `binutils-arm-none-eabi`
   - `pkg-config`
   - `libpng-dev`
   - `python3-pip`
   - `python3-numpy`
   - `python3-pil`
3. Clones and builds [`pret/agbcc`](https://github.com/pret/agbcc) inside `tools/agbcc` (ignored by git) and installs it into this repo.
4. Builds helper tools via `./build_tools.sh`.
5. Runs `make -j$(nproc)` to produce `fireemblem8.gba`.
6. Verifies the ROM hash with `sha1sum -c checksum.sha1`.

On success you’ll see:

```
fireemblem8.gba: OK
[✓] Build complete: /path/to/fireemblem8u/fireemblem8.gba
```

## Troubleshooting

- **Missing ROM** – Copy your ROM to `baserom.gba` first; the script exits otherwise.
- **Dependency failures** – Re-run the script; it reinstalls packages as needed. Ensure you have network + sudo.
- **Toolchain already installed** – The script skips cloning `agbcc` if `tools/agbcc` already exists.
- **Slower rebuilds** – Subsequent `make` runs are faster. For incremental work, just run `make -j$(nproc)` manually.

After the script finishes, launch your preferred emulator with `fireemblem8.gba` or start modifying the source.
