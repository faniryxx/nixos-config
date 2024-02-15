# Packages needed when running on an hyprland DE
{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # libsForQt5.dolphin
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        networkmanager_dmenu
        networkmanagerapplet
        orchis-theme
        pavucontrol
        sassc
        swaylock-effects
        swaynotificationcenter
        themechanger
        waybar
        wlogout
        wofi
    ];

    # Set up swaylock correctly
    security.pam.services.swaylock = {};
}
