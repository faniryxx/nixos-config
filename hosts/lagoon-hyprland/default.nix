# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../packages/hyprland.nix
      ../../system/default.nix
    ];

  networking.hostName = "lagoon"; # Define your hostname.

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;

  # Enable hyprland
  programs.hyprland.enable = true;

  # asusctl
  services = {
    asusd = {
      enable = true;
      enableUserService = true;
    };
  };

  environment.systemPackages = with pkgs; [
    asusctl
    brightnessctl
    supergfxctl
  ];
}
