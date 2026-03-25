# Wsl-Disk

WSL Disk Analyzer: compares Linux filesystem usage vs the underlying WSL2 VHDX file size, then (optionally) reclaims wasted space via `Optimize-VHD`.

## Install from GitHub Release

Download the `.deb` from the repository’s **Releases** page, then run:

```bash
sudo apt update
sudo apt install -y ./wsl-disk_0.1.0_all.deb
```

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
