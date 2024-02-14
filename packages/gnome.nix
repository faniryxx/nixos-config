# Gnome-related packages

{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        gnome.gnome-tweaks
        gnomeExtensions.alphabetical-app-grid
        gnomeExtensions.blur-my-shell
        gnomeExtensions.color-picker
        gnomeExtensions.dash-to-dock
        gnomeExtensions.media-controls
        gnomeExtensions.pop-shell
    ];

    # Do not install these packages
    environment.gnome.excludePackages = (with pkgs; [
        gnome-photos
        gnome-tour
        gedit # text editor
        ]) ++ (with pkgs.gnome; [
        cheese # webcam tool
        gnome-music
        epiphany # web browser
        geary # email reader
        evince # document viewer
        gnome-characters
        totem # video player
        tali # poker game
        iagno # go game
        hitori # sudoku game
        atomix # puzzle game
    ]);
}