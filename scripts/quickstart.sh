#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: ./scripts/quickstart.sh [--rom /path/to/baserom.gba]

Options:
  --rom PATH   Copy the ROM from PATH to baserom.gba if it is missing.

You can also set FIREEMBLEM8U_ROM to point to the ROM.
EOF
}

ROM_SOURCE="${FIREEMBLEM8U_ROM:-}"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --rom)
      ROM_SOURCE="$2"
      shift 2
      ;;
    --rom=*)
      ROM_SOURCE="${1#*=}"
      shift 1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage
      exit 1
      ;;
  esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
AGBCC_DIR="${PROJECT_DIR}/tools/agbcc"
BASEROM_PATH="${PROJECT_DIR}/baserom.gba"

ensure_baserom() {
  if [[ -f "${BASEROM_PATH}" ]]; then
    return
  fi

  if [[ -n "${ROM_SOURCE}" ]]; then
    echo "[+] Copying ROM from ${ROM_SOURCE}"
    cp "${ROM_SOURCE}" "${BASEROM_PATH}"
  fi

  if [[ ! -f "${BASEROM_PATH}" ]]; then
    cat <<'EOF' >&2
[!] Missing baserom.gba.
    Copy your legally obtained Fire Emblem: The Sacred Stones (USA) ROM to the repository root
    (or provide --rom /path/to/rom.gba or FIREEMBLEM8U_ROM=/path/to/rom.gba).
EOF
    exit 1
  fi
}

have_cmd() {
  command -v "$1" >/dev/null 2>&1
}

install_python_modules() {
  if have_cmd pip3; then
    pip3 install --user --upgrade numpy pillow >/dev/null
  fi
}

install_deps() {
  local pkg_mgr=""
  if have_cmd apt-get; then
    pkg_mgr="apt"
  elif have_cmd pacman; then
    pkg_mgr="pacman"
  elif have_cmd brew; then
    pkg_mgr="brew"
  else
    echo "[!] No supported package manager detected (apt, pacman, brew)." >&2
    echo "    Install the prerequisites manually: binutils arm-none-eabi toolchain, pkg-config, libpng, python3, pip, numpy, pillow." >&2
    return
  }

  local need_toolchain=0
  if ! have_cmd arm-none-eabi-as; then
    need_toolchain=1
  fi

  case "${pkg_mgr}" in
    apt)
      echo "[+] Updating apt package index..."
      sudo apt-get update -y >/dev/null
      local packages=(pkg-config libpng-dev python3-pip python3-numpy python3-pil)
      if (( need_toolchain )); then
        packages=(binutils-arm-none-eabi "${packages[@]}")
      fi
      if [[ ${#packages[@]} -gt 0 ]]; then
        echo "[+] Installing packages via apt: ${packages[*]}"
        sudo apt-get install -y "${packages[@]}" >/dev/null
      fi
      ;;
    pacman)
      local packages=(pkgconf libpng python-pip python-numpy python-pillow)
      if (( need_toolchain )); then
        packages=(arm-none-eabi-binutils "${packages[@]}")
      fi
      echo "[+] Installing packages via pacman: ${packages[*]}"
      sudo pacman -Sy --needed --noconfirm "${packages[@]}"
      ;;
    brew)
      local packages=(pkg-config libpng)
      if (( need_toolchain )); then
        packages=(arm-none-eabi-gcc "${packages[@]}")
      fi
      echo "[+] Installing packages via Homebrew: ${packages[*]}"
      brew update >/dev/null
      brew install "${packages[@]}"
      echo "[+] Ensuring Python modules (numpy, pillow) via pip3"
      install_python_modules
      return
      ;;
  esac

  install_python_modules
}

prepare_agbcc() {
  if [[ ! -d "${AGBCC_DIR}" ]]; then
    echo "[+] Cloning agbcc into ${AGBCC_DIR}"
    git clone https://github.com/pret/agbcc.git "${AGBCC_DIR}"
  fi

  pushd "${AGBCC_DIR}" >/dev/null
    echo "[+] Building agbcc"
    ./build.sh
    echo "[+] Installing agbcc into project"
    ./install.sh "${PROJECT_DIR}"
  popd >/dev/null
}

build_project() {
  pushd "${PROJECT_DIR}" >/dev/null
    echo "[+] Building project-specific tools"
    ./build_tools.sh
    echo "[+] Building fireemblem8u (this can take several minutes)"
    make -j"$(nproc)"
    echo "[+] Verifying ROM checksum"
    sha1sum -c checksum.sha1
    echo "[✓] Build complete: ${PROJECT_DIR}/fireemblem8.gba"
  popd >/dev/null
}

ensure_baserom
install_deps
prepare_agbcc
build_project
