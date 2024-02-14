# Common packages between all machines and all DEs

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        curl
        discord
        git
        gnome.gnome-terminal
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
}