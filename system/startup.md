# System Configuration

## Boot Flow

UEFI Firmware
→ GRUB
→ Plymouth (arch-mac-style)
→ greetd
→ tuigreet
→ /usr/bin/start-hyprland
→ Hyprland

## Autologin

File:
system/autologin/override.conf

TTY1 autologin retired.
Kept in git history under previous commits.

## Hyprland Startup

File:
home/.zprofile

Hyprland is started from TTY1 via:

```bash
exec /usr/bin/start-hyprland
```

Conditions:

```bash
if [[ "$XDG_VTNR" == "1" && -z "$WAYLAND_DISPLAY" ]]; then
    exec /usr/bin/start-hyprland
fi
```

Notes:

* Uses the official `/usr/bin/start-hyprland` watchdog launcher.
* Does NOT use a custom wrapper script.
* Does NOT use a systemd user Hyprland service.
* Previous `hyprland.service` override was removed.

## Plymouth

Theme:
arch-mac-style

Files:
system/plymouth/theme/

Current kernel parameters:

```text
quiet loglevel=3 splash rd.systemd.show_status=false vt.global_cursor_default=0 nvidia-drm.modeset=1
```

## NVIDIA

Packages:

* nvidia-open
* nvidia-utils
* nvidia-settings
* nvidia-prime
* opencl-nvidia

## Audio

PipeWire stack:

* pipewire
* pipewire-pulse
* pipewire-alsa
* wireplumber

## Services Enabled

* bluetooth.service
* tailscaled.service

## Removed During Cleanup

* LibreOffice user profile tracking
* Spotify user data tracking
* Spyder user data tracking
* MPV cache tracking
* MPV watch_later tracking
* MPV shader cache tracking
* Stale Hyprland systemd user service override
* Custom start-hyprland wrapper script

## Repository Structure

configs/

* Application configuration files

home/

* User-level files (~)

packages/

* Package inventories

scripts/

* dotify
* undotify
* relink
* status

system/

* Boot, login, Plymouth and system configuration

```
```

