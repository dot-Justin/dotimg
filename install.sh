#!/usr/bin/env bash
set -e

DEST="${HOME}/.local/bin/dotimg"

# Check Python
if ! command -v python3 &>/dev/null; then
    echo "Error: python3 not found." >&2
    exit 1
fi

PY_VER=$(python3 -c "import sys; print(sys.version_info >= (3, 10))")
if [ "$PY_VER" != "True" ]; then
    echo "Error: Python 3.10+ required." >&2
    exit 1
fi

mkdir -p "$(dirname "$DEST")"
cp "$(dirname "$0")/dotimg" "$DEST"
chmod +x "$DEST"

echo "Installed: $DEST"
echo ""
echo "Dependencies (if not already installed):"
echo "  Arch:  sudo pacman -S python-pyqt6 python-pillow"
echo "  pip:   pip install PyQt6 Pillow"
echo ""

# Check if ~/.local/bin is in PATH
if ! echo "$PATH" | grep -q "${HOME}/.local/bin"; then
    echo "Note: Add ~/.local/bin to your PATH:"
    echo "  echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.bashrc"
fi
