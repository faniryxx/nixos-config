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

  networking.hostName = "lagoon";

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # asusctl
  services = {
    asusd = {
      enable = true;
      enableUserService = true;
    };
  };

  environment.systemPackages = with pkgs; [
    asusctl
    supergfxctl
    gnomeExtensions.supergfxctl-gex
  ];
}
