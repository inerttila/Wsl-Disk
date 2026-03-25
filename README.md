# wsl-disk

WSL Disk Analyzer: compares Linux filesystem usage vs the underlying WSL2 VHDX file size, then (optionally) reclaims wasted space via `Optimize-VHD`.

## Install

From inside WSL:

```bash
chmod +x ./install.sh
sudo ./install.sh
```

After that:

```bash
wsl-disk
```

## Usage

Show report for the current distro:

```bash
wsl-disk
```

Show report for a specific distro:

```bash
wsl-disk --distro Ubuntu-22.04
```

Reclaim wasted space (prompts for confirmation):

```bash
wsl-disk reclaim
```

Non-interactive reclaim:

```bash
wsl-disk reclaim --yes
```

## Notes

- Reclaim uses Windows `Optimize-VHD -Mode Full`, which generally requires Windows admin approval (UAC).
- Distro-to-VHDX mapping uses the Windows registry `...\Lxss` keys.
- This MVP compares `df` root filesystem usage to the VHDX file length. It works well in practice, but it’s not an exact block-level model.

