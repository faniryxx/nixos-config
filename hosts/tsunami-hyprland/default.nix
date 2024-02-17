{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../packages/hyprland.nix
      ../../system/default.nix
    ];

  networking.hostName = "tsunami";

  environment.systemPackages = with pkgs; [
    openrgb-with-all-plugins
    i2c-tools
  ];

  # Enable the GNOME Display manager
  services.xserver.displayManager.gdm.enable = true;

  # Enable hyprland
  programs.hyprland.enable = true;

  # OpenRGB udev rules
  services.udev.extraRules = builtins.readFile ./60-openrgb.rules;
}
