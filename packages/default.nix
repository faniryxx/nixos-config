# Common packages between all machines and all DEs

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        adwaita-qt
        bat
        curl
        discord
        git
        glib
        gnome.gnome-terminal
        gnome.nautilus
        home-manager
        libsForQt5.breeze-icons
        libsForQt5.qt5.qtwayland
        libsForQt5.qt5ct
        loupe
        networkmanager_dmenu
        networkmanagerapplet
        nwg-look
        orchis-theme
        p7zip
        pavucontrol
        pfetch
        pinta
        sassc
        spicetify-cli
        spotify
        swaybg
        swaylock-effects
        swaynotificationcenter
        terminator
        themechanger
        vim
        vlc
        vscode
        waybar
        wget
        wlogout
        wofi
        xarchiver
        xdg-desktop-portal-hyprland
        zsh
    ];

    # Set up swaylock correctly
    security.pam.services.swaylock = {};
}