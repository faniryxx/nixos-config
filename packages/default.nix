# Common packages between all machines and all DEs

{ config, pkgs, ... }:

{
    # Packages to be installed by default for all hosts
    environment.systemPackages = with pkgs; [
        curl
        discord
        git
        gnome.gnome-terminal
        home-manager
        pfetch
        pinta
        spicetify-cli
        spotify
        terminator
        vim
        vlc
        vscode
        wget
        zsh
    ];
}