# Claude Theme (VS Code / Cursor / Qoder)

Warm dark & light color themes sharing the same palette as `claude-theme.nvim`.

## Install (local)

Run these from this `vscode/` directory, then reload the window and pick **Claude Dark** / **Claude Light**.

### Cursor / VS Code

Symlink is enough:

```bash
# Cursor
ln -sfn "$(pwd)" ~/.cursor/extensions/hnpyn.claude-theme-0.1.0

# VS Code
ln -sfn "$(pwd)" ~/.vscode/extensions/hnpyn.claude-theme-0.1.0
```

### Qoder

Qoder ignores bare symlinks and only loads extensions listed in `extensions.json`. Copy the folder and register it:

```bash
DEST="$HOME/.qoder/extensions/hnpyn.claude-theme-0.1.0"
rm -rf "$DEST"
cp -R "$(pwd)" "$DEST"

python3 - <<'PY'
import json, time
from pathlib import Path

ext = Path.home() / ".qoder" / "extensions"
reg = ext / "extensions.json"
folder = "hnpyn.claude-theme-0.1.0"
path = str(ext / folder)
eid = "hnpyn.claude-theme"

data = json.loads(reg.read_text()) if reg.exists() else []
data = [x for x in data if x.get("identifier", {}).get("id") != eid]
data.append({
    "identifier": {"id": eid},
    "version": "0.1.0",
    "location": {
        "$mid": 1,
        "fsPath": path,
        "external": f"file://{path}",
        "path": path,
        "scheme": "file",
    },
    "relativeLocation": folder,
    "metadata": {
        "installedTimestamp": int(time.time() * 1000),
        "pinned": False,
        "source": "vsix",
    },
})
reg.write_text(json.dumps(data, indent=2) + "\n")
print("registered", eid)
PY
```

Then fully restart Qoder (or `Developer: Reload Window`).

## Palette

| Role | Dark | Light |
| --- | --- | --- |
| Background | `#1f1e1b` | `#faf9f5` |
| Foreground | `#f0eee6` | `#141413` |
| Accent (Clay) | `#d97757` | `#d97757` |
