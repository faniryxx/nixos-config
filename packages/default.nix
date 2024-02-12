# Common packages between all machines

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        cowsay
        curl
        discord
        git
        gnome.gnome-tweaks
        gnome.gnome-terminal
        gnomeExtensions.alphabetical-app-grid
        gnomeExtensions.blur-my-shell
        gnomeExtensions.color-picker
        gnomeExtensions.dash-to-dock
        gnomeExtensions.pop-shell
        pfetch
        pinta
        spicetify-cli
        spotify
        terminator
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        vlc
        vscode
        wget
        zsh
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