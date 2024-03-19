# hyprland specific options for host tsunami
{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ];

  home.file = {
    # hyprland config
    ".config/hypr/hyprland.conf" = {
      source = config.lib.file.mkOutOfStoreSymlink ../.config/hypr/lagoon/hyprland.conf;
    };
  };
}