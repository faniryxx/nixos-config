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

  home.file = {
    # zsh config
    ".zshrc" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.zshrc;
    };
  };
}
