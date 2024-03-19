# Common home-manager settings
{ config, pkgs, ... }:

{
  home.username = "faniryxx";
  home.homeDirectory = "/home/faniryxx";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  home.packages = with pkgs; [
  ];

  programs.git = {
    enable = true;
    userName = "Nathan RANAIVO RAVOAJA";
    userEmail = "faniry597@gmail.com";
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  # For future reference:
  # To modify cursorTheme, declare it here
  # Set it in nwg-look and ONLY export ~/.icons/default/index.theme and ~/.config/xsettingsd/xsettingsd.conf
  gtk.enable = true;
  gtk.theme.name = "Orchis-Teal-Dark";
  gtk.theme.package = pkgs.orchis-theme;
  gtk.cursorTheme.name = "Bibata-Original-Classic";
  gtk.cursorTheme.package = pkgs.bibata-cursors;

  # Dotfiles management
  home.file = {
    # Fix for dolphin white background on adwaita-dark theme
    ".config/kdeglobals" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/kdeglobals;
    };
    # waybar config
    ".config/waybar/config" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/waybar/config;
    };
    ".config/waybar/style.css" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/waybar/style.css;
    };
    # wlogout config
    ".config/wlogout/layout" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/layout;
    };
    ".config/wlogout/style.css" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/style.css;
    };
    ".config/wlogout/icons/hibernate.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/hibernate.png;
    };
    ".config/wlogout/icons/lock.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/lock.png;
    };
    ".config/wlogout/icons/logout.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/logout.png;
    };
    ".config/wlogout/icons/reboot.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/reboot.png;
    };
    ".config/wlogout/icons/shutdown.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/shutdown.png;
    };
    ".config/wlogout/icons/suspend.png" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/wlogout/icons/suspend.png;
    };
  };

  # Common hyprland configuration
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.extraConfig = ''
    # Execute your favorite apps at launch
    exec-once = waybar
    exec-once = swaync
    exec-once = firefox
    exec-once = swaybg -o "*" -m fill -i /home/faniryxx/nixos-config/docs/img/sea-wallpaper.png

    # Set programs that you use
    $terminal = gnome-terminal
    $fileManager = nautilus
    $menu = wofi -i -O alphabetical --show drun

    # Some default env vars.
    env = XCURSOR_SIZE,24
    env = QT_QPA_PLATFORM,wayland
    env = QT_QPA_PLATFORMTHEME,qt5ct # change to qt6ct if you have that
    env = QT_STYLE_OVERRIDE,adwaita-dark # set QT theme to adwaita-dark automatically

    # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
    input {
        kb_layout = fr
        kb_variant =
        kb_model =
        kb_options =
        kb_rules =

        follow_mouse = 1

        touchpad {
            natural_scroll = no
        }

        sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
    }

    general {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more

        gaps_in = 5
        gaps_out = 10
        border_size = 2
        col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
        col.inactive_border = rgba(595959aa)

        layout = dwindle

        # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false

        # Allow resizing on borders
        resize_on_border = true

        # do not warp cursor on focus
        no_cursor_warps = true
    }

    animations {
        enabled = yes

        # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

        bezier = bounce, 0.34, 1.56, 0.83, 0.93
        bezier = easeInOutExpo, 0.87, 0, 0.13, 1

        animation = windows, 1, 5, bounce, slide
        animation = windowsOut, 1, 7, bounce, slide
        animation = border, 1, 10, bounce
        animation = borderangle, 1, 20, easeInOutExpo, loop
        animation = fade, 1, 7, default
        animation = workspaces, 1, 6, bounce
    }

    dwindle {
        # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
        pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = yes # you probably want this
    }

    master {
        # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
        new_is_master = true
    }

    gestures {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        workspace_swipe = off
    }

    misc {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        force_default_wallpaper = -1 # Set to 0 or 1 to disable the anime mascot wallpapers
    }

    # Example windowrule v1
    # windowrule = float, ^(kitty)$
    # Example windowrule v2
    # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
    # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
    windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.

    # See https://wiki.hyprland.org/Configuring/Keywords/ for more
    $mainMod = SUPER

    # Fullscreen
    bind = $mainMod, F, fakefullscreen,

    # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
    bind = $mainMod, T, exec, $terminal
    bind = SUPER SHIFT, A, killactive, 
    bind = $mainMod, M, exit, 
    bind = $mainMod, G, togglefloating, 
    bind = $mainMod, SUPER_L, exec, $menu
    bind = $mainMod, P, pseudo, # dwindle
    bind = $mainMod, J, togglesplit, # dwindle

    # Move focus with mainMod + arrow keys
    bind = $mainMod, left, movefocus, l
    bind = $mainMod, right, movefocus, r
    bind = $mainMod, up, movefocus, u
    bind = $mainMod, down, movefocus, d

    # Switch workspaces with mainMod + [0-9]
    bind = $mainMod, ampersand, workspace, 1
    bind = $mainMod, eacute, workspace, 2
    bind = $mainMod, quotedbl, workspace, 3
    bind = $mainMod, apostrophe, workspace, 4
    bind = $mainMod, parenleft, workspace, 5
    bind = $mainMod, minus, workspace, 6
    bind = $mainMod, egrave, workspace, 7
    bind = $mainMod, underscore, workspace, 8
    bind = $mainMod, ccedilla, workspace, 9
    bind = $mainMod, agrave, workspace, 10

    # Move active window to a workspace with mainMod + SHIFT + [0-9]
    bind = $mainMod SHIFT, ampersand, movetoworkspace, 1
    bind = $mainMod SHIFT, eacute, movetoworkspace, 2
    bind = $mainMod SHIFT, quotedbl, movetoworkspace, 3
    bind = $mainMod SHIFT, apostrophe, movetoworkspace, 4
    bind = $mainMod SHIFT, parenleft, movetoworkspace, 5
    bind = $mainMod SHIFT, minus, movetoworkspace, 6
    bind = $mainMod SHIFT, egrave, movetoworkspace, 7
    bind = $mainMod SHIFT, underscore, movetoworkspace, 8
    bind = $mainMod SHIFT, ccedilla, movetoworkspace, 9
    bind = $mainMod SHIFT, agrave, movetoworkspace, 10

    # Example special workspace (scratchpad)
    bind = $mainMod, S, togglespecialworkspace, magic
    bind = $mainMod SHIFT, S, movetoworkspace, special:magic

    # Scroll through existing workspaces with mainMod + scroll
    bind = $mainMod, mouse_down, workspace, e+1
    bind = $mainMod, mouse_up, workspace, e-1

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = $mainMod, mouse:273, resizewindow
    bindm = $mainMod, mouse:272, movewindow

    # Resize windows with keyboard
    # will switch to a submap called resize
    bind=$mainMod,Return,submap,resize
    # will start a submap called "resize"
    submap=resize
    # sets repeatable binds for resizing the active window
    binde=,right,resizeactive,30 0
    binde=,left,resizeactive,-30 0
    binde=,up,resizeactive,0 -30
    binde=,down,resizeactive,0 30
    # use reset to go back to the global submap
    bind=,escape,submap,reset 
    # will reset the submap, meaning end the current one and return to the global one
    submap=reset

    # Volume control
    binde=, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
    binde=, XF86AudioLowerVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-
    binde=, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

    # Lock screen with SUPER + L
    bind=$mainMod,L,exec,swaylock --screenshots --clock --effect-blur 20x10 --effect-greyscale --ring-color bb00cc --key-hl-color 880033 --line-color 00000000 --inside-color 00000088 --separator-color 00000000
  '';
}
