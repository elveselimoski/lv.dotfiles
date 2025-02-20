# Install and Apply Flat Remix GTK, Bibata-Modern-Ice, and Papirus Icon Theme on Arch Linux with Hyprland.

## **1. Install Themes**

```bash
# Clone the GTK theme repo
git clone https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme
cd Gruvbox-GTK-Theme
./install.sh

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
# Select Gruvbox-Dark (Appearance), Papirus-Dark (Icons), and Bibata-Modern-Ice (Cursor).
```

```ini
# Hyprland Configuration - ~/.config/hypr/hyprland.conf or in uwsm conf ~/.config/uwsm/env
env = GTK_THEME,Gruvbox-Dark
env = XCURSOR_THEME,Bibata-Modern-Ice
env = XCURSOR_SIZE,24
env = ICON_THEME,Papirus-Dark

exec-once = gsettings set org.gnome.desktop.interface gtk-theme "Gruvbox-Dark"
exec-once = gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
exec-once = gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"
```

```bash
# Qt Apps
sudo pacman -S qt5ct
qt5ct # Set theme to match GTK

# Add env variable in uwsm or hyprland config
export QT_QPA_PLATFORMTHEME=qt5ct
```

# Waybar
