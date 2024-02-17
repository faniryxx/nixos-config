# nixos-config
Nix configuration files for reproductible environments.

The main objective of the repo is to help create near-identic environments on multiple hosts, without having to rice every host from the beginning after a fresh install of a linux distro.

This repository is at the moment focusing on 2 hosts called `tsunami` and `lagoon`. The first one is a desktop PC and the latter a Rog Zephyrus G14 laptop.

For each host, there is a configuration with Gnome as DE and another with Hyprland. With the power of Nix, it is possible to go from Gnome to Hyprland and vice-versa with only one command and a logout-login.

### Screenshots
Host `tsunami` running Hyprland with Waybar:
![tsunami-hyprland](docs/img/tsunami-hyprland.png)
