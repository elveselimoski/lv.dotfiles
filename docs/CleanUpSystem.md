# Monthly Cleanup Tasks for Arch Linux with Hyprland

## Update the System
```bash
sudo pacman -Syu
```
- **-S**: Synchronize packages.
- **-y**: Refresh the package database.
- **-u**: Upgrade all installed packages.

## Remove Unused Packages
```bash
sudo pacman -Rns $(pacman -Qdtq)
```
- **-R**: Remove packages.
- **-n**: Remove configuration files.
- **-s**: Remove dependencies that are not required by other packages.
- **$(pacman -Qdtq)**: List all orphaned packages (packages no longer required by any installed package).

## Clear Package Cache
```bash
sudo pacman -Sc
```
- **-S**: Synchronize packages.
- **-c**: Clear the package cache, removing all cached packages that are not currently installed.

## Remove Old Kernels
```bash
sudo pacman -R $(pacman -Qq | grep -E '^linux[0-9]*')
```
- **-R**: Remove packages.
- **$(pacman -Qq | grep -E '^linux[0-9]*')**: List all installed kernels and remove them.

## Clean Yay Cache
```bash
yay -Sc
```
- **-S**: Synchronize packages.
- **-c**: Clear the package cache, removing all cached packages that are not currently installed.

## Remove Unused AUR Packages
```bash
yay -Yc
```
- **-Y**: Yay-specific operations.
- **-c**: Clean unused AUR packages and dependencies.

## Remove Orphaned AUR Packages
```bash
yay -Rns $(yay -Qdtq)
```
- **-R**: Remove packages.
- **-n**: Remove configuration files.
- **-s**: Remove dependencies that are not required by other packages.
- **$(yay -Qdtq)**: List all orphaned AUR packages (packages no longer required by any installed package).

## Clean Yay Build Directory
```bash
rm -rf ~/.cache/yay/*
```

## Clean Journal Logs
```bash
sudo journalctl --vacuum-time=30d
```
- **journalctl**: Query and display messages from the systemd journal.
- **--vacuum-time=30d**: Remove journal logs older than 30 days.

## Remove Temporary Files
```bash
sudo rm -rf /tmp/*
```

## Clean Hyprland Cache
```bash
rm -rf ~/.cache/hyprland
```

## Check for Broken Symlinks
```bash
find ~ -type l -! -exec test -e {} \; -print
```
- **find**: Search for files and directories.
- **~**: Start search from the user's home directory.
- **-type l**: Find symbolic links.
- **-! -exec test -e {} \;**: Check if the symlink points to a non-existent file.
- **-print**: Print the broken symlinks to the terminal.

## Clean Thumbnail Cache
```bash
rm -rf ~/.cache/thumbnails/*
```

## Optimize Pacman Database
```bash
sudo pacman-optimize
```
- **pacman-optimize**: Optimize the pacman database by defragmenting it.

## Clean Unused Dependencies
```bash
sudo pacman -Qtdq | sudo pacman -Rns -
```
- **pacman -Qtdq**: List all orphaned packages.
- **|**: Pipe the output to the next command.
- **sudo pacman -Rns -**: Remove the listed orphaned packages and their dependencies.

## Clean User Cache
```bash
rm -rf ~/.cache/*
```

## Clean Old Configurations
```bash
rm -rf ~/.config/*.old
```

## Clean Unused Locales
```bash
sudo localepurge
```
- **localepurge**: Remove unused locale files to free up space.

## Check Disk Usage
```bash
sudo ncdu /
```
- **ncdu**: NCurses Disk Usage analyzer.
- **/**: Analyze disk usage starting from the root directory.

## Clean Docker Resources (if Docker is installed)
```bash
docker system prune -f
```
- **system prune**: Remove unused Docker data.
- **-f**: Force removal without prompting for confirmation.

## Clean Browser Cache (e.g., Firefox)
```bash
rm -rf ~/.cache/mozilla/firefox/*.default-release/cache/*
```
- **~/.cache/mozilla/firefox/*.default-release/cache/***: Target the Firefox cache directory.

## Clean Trash
```bash
rm -rf ~/.local/share/Trash/*
```
- **~/.local/share/Trash/***: Target the user's trash directory.