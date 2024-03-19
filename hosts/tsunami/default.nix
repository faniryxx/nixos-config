{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../system/default.nix
    ];

  networking.hostName = "tsunami";

  environment.systemPackages = with pkgs; [
    openrgb-with-all-plugins
    i2c-tools
  ];

  # Enable the GNOME Display manager
  services.xserver.displayManager.gdm.enable = true;

  services = {
    udev.packages = with pkgs; [ 
        openrgb-with-all-plugins
    ];
  };

  # Enable hyprland
  programs.hyprland.enable = true;
}
