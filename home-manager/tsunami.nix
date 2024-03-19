# hyprland specific options for host tsunami
{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ];

  # tsunami-specific hyprland configuration
  wayland.windowManager.hyprland.extraConfig = ''
    exec-once = sleep 20 && openrgb --startminimized --profile "ChillOrange"
    
    # See https://wiki.hyprland.org/Configuring/Monitors/
    monitor=DP-2, 3440x1440@144, 1080x200, 1
    monitor=HDMI-A-1, 1920x1080@144, 0x0, 1, transform, 3
    workspace=1,monitor:DP-2,defaut:true,persistent:true
    workspace=2,monitor:DP-2,persistent:true
    workspace=3,monitor:DP-2,persistent:true
    workspace=4,monitor:DP-2,persistent:true
    workspace=5,monitor:HDMI-A-1,persistent:true
    exec-once=xrandr --output DP-2 --primary

    decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 10
    
    blur {
        enabled = true
        size = 3
        passes = 1
    }

    drop_shadow = true
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
    }

    # Waybar background blur
    blurls = waybar
  '';
}