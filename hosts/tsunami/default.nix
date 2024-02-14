# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../packages/gnome.nix
      ../../gnome/default.nix
      ../../system/default.nix
    ];

  networking.hostName = "tsunami"; # Define your hostname.

  environment.systemPackages = with pkgs; [
    openrgb-with-all-plugins
    i2c-tools
  ];

  # OpenRGB udev rules
  services.udev.extraRules = builtins.readFile ./60-openrgb.rules;
}
