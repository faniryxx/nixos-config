# Packages needed when running on an hyprland DE
{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        glib
        gnome.nautilus
        libsForQt5.breeze-icons
        libsForQt5.qt5.qtwayland
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        networkmanager_dmenu
        networkmanagerapplet
        nwg-look
        orchis-theme
        pavucontrol
        sassc
        swaylock-effects
        swaynotificationcenter
        themechanger
        waybar
        wlogout
        wofi
        xarchiver
        xdg-desktop-portal-hyprland
    ];

    # Set up swaylock correctly
    security.pam.services.swaylock = {};
}
