{ config, pkgs, ... }:

{
  home.username = "faniryxx";
  home.homeDirectory = "/home/faniryxx";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # Packages that should be installed to the user profile.
  # Packages declared here will only be available to the user faniryxx
  home.packages = with pkgs; [
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Nathan RANAIVO RAVOAJA";
    userEmail = "faniry597@gmail.com";
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  # For future reference:
  # To modify cursorTheme, declare it here
  # Set it in nwg-look and ONLY export ~/.icons/default/index.theme and ~/.config/xsettingsd/xsettingsd.conf
  gtk.enable = true;
  gtk.theme.name = "Orchis-Teal-Dark";
  gtk.theme.package = pkgs.orchis-theme;
  #gtk.font.name = "Sans 10"; 
  gtk.cursorTheme.name = "Bibata-Original-Classic";
  gtk.cursorTheme.package = pkgs.bibata-cursors;
  #gtk.cursorTheme.name = "Banana";
  #gtk.cursorTheme.package = pkgs.banana-cursor;
  #gtk.cursorTheme.size = 24;
}
