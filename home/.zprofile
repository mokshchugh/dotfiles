export PATH="$HOME/.local/bin:$PATH"

# Auto-start Hyprland on TTY1 using start-hyprland
if [[ "$XDG_VTNR" == "1" && -z "$WAYLAND_DISPLAY" ]]; then
  exec /usr/bin/start-hyprland
fi
