# Packages needed when running on an hyprland DE
{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        libsForQt5.dolphin
        wofi
    ];
}