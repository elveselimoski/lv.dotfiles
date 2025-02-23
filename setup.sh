#!/bin/bash

# Make sure dotfiles dir is in home dir.

echo "Creating symlinks..."

DOTFILES_DIR="$HOME/lv.dotfiles"

# Zsh
stow -R zsh --verbose
#Starship
stow -R --target=$HOME/.config starship --verbose

# Hypr
mkdir -p "$HOME/.config/hypr"
stow -R --target=$HOME/.config/hypr hypr --verbose
# Make scripts executable
find "$DOTFILES_DIR/hypr/scripts/" -type f -exec chmod +x {} \;

# uwsm
mkdir -p "$HOME/.config/uwsm"
stow -R --target=$HOME/.config/uwsm uwsm --verbose

# Waybar
mkdir -p "$HOME/.config/waybar"
stow -R --target=$HOME/.config/waybar waybar --verbose

# Ghostty
mkdir -p "$HOME/.config/ghostty"
stow -R --target=$HOME/.config/ghostty ghostty --verbose

# Wofi
mkdir -p "$HOME/.config/wofi"
stow -R --target=$HOME/.config/wofi wofi --verbose

# nwg-bar
mkdir -p "$HOME/.config/nwg-bar"
stow -R --target=$HOME/.config/nwg-bar nwg-bar --verbose

# Neovim
mkdir -p "$HOME/.config/nvim"
# ln -sf "$DOTFILES_DIR/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua"

echo "Symlinks created successfully!"
