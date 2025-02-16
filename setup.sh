#!/bin/bash

echo "Creating symlinks..."

DOTFILES_DIR="$HOME/lv.dotfiles"

# ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
# ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
# ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"

# Hyprland
mkdir -p "$HOME/.config/hypr/hyprland"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/autostart.conf" "$HOME/.config/hypr/hyprland/autostart.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/keybindings.conf" "$HOME/.config/hypr/hyprland/keybindings.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/workspaces.conf" "$HOME/.config/hypr/hyprland/workspaces.conf"
ln -sf "$DOTFILES_DIR/.config/hypr/hyprland/general.conf" "$HOME/.config/hypr/hyprland/general.conf"

mkdir -p "$HOME/.scripts/hypr"
ln -sf "$DOTFILES_DIR/.scripts/hypr/changevolume" "$HOME/.scripts/hypr/changevolume"

# Waybar
mkdir -p "$HOME/.config/waybar"
ln -sf "$DOTFILES_DIR/.config/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
ln -sf "$DOTFILES_DIR/.config/waybar/theme.css" "$HOME/.config/waybar/theme.css"
ln -sf "$DOTFILES_DIR/.config/waybar/style.css" "$HOME/.config/waybar/style.css"

# Make scripts in the scripts/ directory executable
find "$DOTFILES_DIR/.scripts/" -type f -exec chmod +x {} \;

echo "Symlinks created successfully!"