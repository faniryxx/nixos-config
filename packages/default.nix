# Common packages between all machines

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        cowsay
        curl
        git
        gnome.gnome-tweaks
        gnomeExtensions.blur-my-shell
        gnomeExtensions.dash-to-dock
        gnomeExtensions.pop-shell
        gnomeExtensions.color-picker
        terminator
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        vscode
        wget
    ];

    # Do not install these packages
    environment.gnome.excludePackages = (with pkgs; [
        gnome-photos
        gnome-tour
        ]) ++ (with pkgs.gnome; [
        cheese # webcam tool
        gnome-music
        gnome-terminal
        gedit # text editor
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