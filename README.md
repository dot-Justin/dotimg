# dotimg

Minimal CLI image manipulation tool with a clean GUI. Built for Linux/Wayland.

```
dotimg crop photo.jpg
```

![dotimg crop window with rule-of-thirds overlay, resize handles, and darkened mask outside selection]

---

## Install

### Requirements

- Python 3.10+
- PyQt6 — `sudo pacman -S python-pyqt6` or `pip install PyQt6`
- Pillow — `sudo pacman -S python-pillow` or `pip install Pillow`

### Quick install

```bash
git clone https://github.com/dot-Justin/dotimg
cd dotimg
./install.sh
```

Or manually:

```bash
cp dotimg ~/.local/bin/dotimg
chmod +x ~/.local/bin/dotimg
```

Make sure `~/.local/bin` is in your `$PATH`.

---

## Usage

```bash
# Open image in crop GUI (Enter saves in-place)
dotimg crop photo.jpg

# Default to "save copy" mode (saves as photo_cropped.jpg)
dotimg crop photo.jpg --copy

# Specify output path directly
dotimg crop photo.jpg -o ~/out.png
```

### Crop window controls

| Input | Action |
|---|---|
| Click + drag | Draw crop selection |
| Drag inside selection | Move selection |
| Drag corner/edge handles | Resize selection |
| **Enter** | Save (overwrite original) |
| **Ctrl+S** | Save (overwrite original) |
| **Ctrl+Shift+S** | Save as copy (`name_cropped.ext`) |
| **Ctrl+Shift+A** | Save as… (file chooser) |
| **Ctrl+Shift+C** | Copy selection to clipboard |
| **R** | Reset / clear selection |
| **Escape** / **Ctrl+Q** | Quit without saving |

The crop window shows:
- **Rule-of-thirds grid** inside the selection
- **Darkened overlay** outside the selection
- **Image dimensions** in the status bar (bottom left)
- **Selection dimensions** in the status bar (bottom right)

---

## Planned features

- `dotimg resize` — resize with fixed dimensions or percentage
- `dotimg rotate` — rotate 90/180/270 or arbitrary angle
- `dotimg convert` — convert between formats (jpg ↔ png ↔ webp, etc.)
- `dotimg info` — print image metadata

---

## License

MIT
