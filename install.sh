#!/usr/bin/env bash
set -euo pipefail

PREFIX="${PREFIX:-/usr/local}"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install -d "${PREFIX}/bin"
cp -f "${SRC_DIR}/wsl-disk" "${PREFIX}/bin/wsl-disk"
chmod +x "${PREFIX}/bin/wsl-disk"

echo "Installed: ${PREFIX}/bin/wsl-disk"
echo "Usage: run 'wsl-disk' inside WSL"

