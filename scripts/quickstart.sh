#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
AGBCC_DIR="${PROJECT_DIR}/tools/agbcc"

if [[ ! -f "${PROJECT_DIR}/baserom.gba" ]]; then
  cat <<'EOF' >&2
[!] Missing baserom.gba.
    Copy your legally obtained Fire Emblem: The Sacred Stones (USA) ROM to the repository root and name it baserom.gba.
EOF
  exit 1
fi

APT_PACKAGES=(
  binutils-arm-none-eabi
  pkg-config
  libpng-dev
  python3-pip
  python3-numpy
  python3-pil
)

echo "[+] Updating apt package index..."
sudo apt-get update -y >/dev/null

echo "[+] Installing build prerequisites: ${APT_PACKAGES[*]}"
sudo apt-get install -y "${APT_PACKAGES[@]}" >/dev/null

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

pushd "${PROJECT_DIR}" >/dev/null
  echo "[+] Building project-specific tools"
  ./build_tools.sh
  echo "[+] Building fireemblem8u (this can take several minutes)"
  make -j"$(nproc)"
  echo "[+] Verifying ROM checksum"
  sha1sum -c checksum.sha1
  echo "[✓] Build complete: ${PROJECT_DIR}/fireemblem8.gba"
popd >/dev/null
