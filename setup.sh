#!/bin/bash

echo "Creating symlinks..."

DOTFILES_DIR="$HOME/lv.dotfiles"

ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Hyprland
mkdir -p "$HOME/.config/hypr/hyprland"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/autostart.conf" "$HOME/.config/hypr/hyprland/autostart.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/keybindings.conf" "$HOME/.config/hypr/hyprland/keybindings.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/workspaces.conf" "$HOME/.config/hypr/hyprland/workspaces.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/general.conf" "$HOME/.config/hypr/hyprland/general.conf"

mkdir -p "$HOME/.scripts/hypr"
ln -sf "$DOTFILES_DIR/.scripts/hypr/changevolume" "$HOME/.scripts/hypr/changevolume"
ln -sf "$DOTFILES_DIR/.scripts/hypr/wallpaper" "$HOME/.scripts/hypr/wallpaper"

# uwsm
mkdir -p "$HOME/.config/uwsm"
ln -sf "$DOTFILES_DIR/.config/uwsm/env" "$HOME/.config/uwsm/env"
ln -sf "$DOTFILES_DIR/.config/uwsm/env-hyprland" "$HOME/.config/uwsm/env-hyprland"

# Waybar
mkdir -p "$HOME/.config/waybar"
ln -sf "$DOTFILES_DIR/.config/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
ln -sf "$DOTFILES_DIR/.config/waybar/style.css" "$HOME/.config/waybar/style.css"
ln -sf "$DOTFILES_DIR/.config/waybar/colors.css" "$HOME/.config/waybar/colors.css"

# Hyprpaper
ln -sf "$DOTFILES_DIR/.config/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"

# Hyprlock
ln -sf "$DOTFILES_DIR/.config/hypr/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"

# Hypridle
ln -sf "$DOTFILES_DIR/.config/hypr/hypridle.conf" "$HOME/.config/hypr/hypridle.conf"

# Ghostty
mkdir -p "$HOME/.config/ghostty"
ln -sf "$DOTFILES_DIR/.config/ghostty/config" "$HOME/.config/ghostty/config"

# Wofi
mkdir -p "$HOME/.config/wofi"
ln -sf "$DOTFILES_DIR/.config/wofi/style.css" "$HOME/.config/wofi/style.css"
ln -sf "$DOTFILES_DIR/.config/wofi/config" "$HOME/.config/wofi/config"

# nwg-bar
mkdir -p "$HOME/.config/nwg-bar"
ln -sf "$DOTFILES_DIR/.config/nwg-bar/style.css" "$HOME/.config/nwg-bar/style.css"
ln -sf "$DOTFILES_DIR/.config/nwg-bar/bar.json" "$HOME/.config/nwg-bar/bar.json"

#Starship
ln -sf "$DOTFILES_DIR/.config/starship.toml" "$HOME/.config/starship.toml"

# Neovim
mkdir -p "$HOME/.config/nvim"
# ln -sf "$DOTFILES_DIR/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua"

# Make scripts in the scripts/ directory executable
find "$DOTFILES_DIR/.scripts/" -type f -exec chmod +x {} \;

echo "Symlinks created successfully!"
