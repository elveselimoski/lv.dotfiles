[Regreet](https://github.com/rharish101/ReGreet) setup for Hyprland

In `/etc/greetd/hyprland.conf`

```ini
exec-once = regreet; hyprctl dispatch exit
misc {
    disable_hyprland_logo = true
    disable_splash_rendering = true
    disable_hyprland_qtutils_check = true
}
```

In `/etc/greetd/config.toml`

```toml
[default_session]
comman = "Hyprland --config /etc/greetd/hyprland.conf"
user = "greeter"
```

[Startup delays](https://github.com/rharish101/ReGreet?tab=readme-ov-file#startup-delays)

Add in `/etc/greetd/hyprland.conf`

```ini
env = GTK_USE_PORTAL,0
env = GDK_DEBUG,no-portals
```