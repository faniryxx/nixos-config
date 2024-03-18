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
        loupe
        p7zip
        pfetch
        pinta
        spicetify-cli
        spotify
        swaybg
        terminator
        vim
        vlc
        vscode
        wget
        zsh
    ];
}