# Packages needed when running on an hyprland DE
{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        libsForQt5.dolphin
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        orchis-theme
        sassc
        themechanger
        wofi
    ];
}