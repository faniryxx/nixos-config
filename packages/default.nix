# Common packages between all machines and all DEs

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        adwaita-qt
        bat
        curl
        discord
        ddcui
        ddcutil
        git
        glib
        gnome.gnome-terminal
        home-manager
        i2c-tools
        libsForQt5.breeze-icons
        libsForQt5.qt5.qtwayland
        libsForQt5.qt5ct
        loupe
        lutris
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
        wineWowPackages.waylandFull
        wineWowPackages.fonts
        winetricks
        wireguard-tools
        wlogout
        wofi
        xarchiver
        xdg-desktop-portal-hyprland
        zsh
    ];

    # Set up swaylock correctly
    security.pam.services.swaylock = {};
}
