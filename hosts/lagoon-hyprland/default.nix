{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../packages/default.nix
      ../../packages/hyprland.nix
      ../../system/default.nix
    ];

  networking.hostName = "lagoon";

  # Enable the GNOME Display manager
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
