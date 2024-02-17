{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../packages/gnome.nix
      ../../pop-shell/kb_shortcuts.nix
      ../../system/default.nix
    ];

  networking.hostName = "tsunami";

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
    openrgb-with-all-plugins
    i2c-tools
  ];

  # OpenRGB udev rules
  services.udev.extraRules = builtins.readFile ./60-openrgb.rules;
}
