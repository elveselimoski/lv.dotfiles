# Install and Apply Flat Remix GTK, Bibata-Modern-Ice, and Papirus Icon Theme on Arch Linux with Hyprland.

## **1. Install Themes**

```bash
# Clone the GTK theme repo
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p ~/.themes

# Copy the dark green variant
cp -r flat-remix-gtk/Flat-Remix-GTK-Green-Dark ~/.themes/

# Papirus Icon Theme
sudo pacman -S papirus-icon-theme

# Bibata-Modern-Ice Cursor
yay -S bibata-cursor-theme
```

## **2. Apply Themes**

```bash
# GTK Apps 
sudo pacman -S lxappearance
lxappearance
# Select Flat-Remix-GTK-Green-Dark (Appearance), Papirus-Dark (Icons), and Bibata-Modern-Ice (Cursor).
```

```ini
# Hyprland Configuration - ~/.config/hypr/hyprland.conf or in uwsm conf ~/.config/uwsm/env
env = GTK_THEME,Flat-Remix-GTK-Green-Darkest
env = XCURSOR_THEME,Bibata-Modern-Ice
env = XCURSOR_SIZE,24
env = ICON_THEME,Papirus-Dark
```

```bash
# Qt Apps
sudo pacman -S qt5ct
qt5ct # Set theme to match GTK

# Add env variable in uwsm or hyprland config
export QT_QPA_PLATFORMTHEME=qt5ct
```