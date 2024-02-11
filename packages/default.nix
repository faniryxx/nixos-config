# Common packages between all machines

{ config, pkgs, ... }:

{
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
}