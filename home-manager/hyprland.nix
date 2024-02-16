# hyprland specific options for all hosts
{ config, pkgs, ... }:

{ 
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
}