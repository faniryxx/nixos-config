# hyprland specific options for host tsunami
{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ];

  # lagoon-specific hyprland configuration
  wayland.windowManager.hyprland.extraConfig = ''
    # See https://wiki.hyprland.org/Configuring/Monitors/
    monitor=eDP-2, 1920x1200@60, 0x0, 1
    workspace=1,monitor:eDP-2,defaut:true,persistent:true
    workspace=2,monitor:eDP-2,persistent:true
    workspace=3,monitor:eDP-2,persistent:true
    workspace=4,monitor:eDP-2,persistent:true

    decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 10
    
    blur {
        enabled = false
        size = 3
        passes = 1
      }

    drop_shadow = false
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
    }

    bind = , XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_SOURCE@ toggle 

    # Keyboard backlight
    bind = , xf86KbdBrightnessUp, exec, brightnessctl -d *::kbd_backlight set +33%
    bind = , xf86KbdBrightnessDown, exec, brightnessctl -d *::kbd_backlight set 33%-

    # Screen brightness
    bind = , XF86MonBrightnessUp, exec, brightnessctl s +5%
    bind = , XF86MonBrightnessDown, exec, brightnessctl s 5%-

    # rog-control-center
    bind=,XF86Launch1,exec,rog-control-center

    # asusctl profile
    bind=,XF86Launch4,exec,asusctl profile -n
  '';
}