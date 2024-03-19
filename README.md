# nixos-config
Nix configuration files for reproductible environments.

The main objective of the repo is to help create near-identic environments on multiple hosts, without having to rice every host from the beginning after a fresh install of a linux distro.

### Repository content
    .
    ├── .config                                 # Contents will be symlinked to ~/.config
    │   ├── hypr
    │   │   ├── lagoon
    │   │   │   └── hyprland.conf               # Hyprland config file for host lagonn
    │   │   └── tsunami
    │   │       └── hyprland.conf               # Hyprland config file for host tsunami
    │   ├── kdeglobals                          # Fix for unconsistent themeing
    │   ├── waybar                              # Config files for Waybar
    │   │   ├── config 
    │   │   └── style.css
    │   └── wlogout                             # Config files and icons for wlogout, used as a power menu on Hyprland
    │       ├── icons
    │       │   ├── hibernate.png
    │       │   ├── lock.png
    │       │   ├── logout.png
    │       │   ├── reboot.png
    │       │   ├── shutdown.png
    │       │   └── suspend.png
    │       ├── layout
    │       └── style.css
    ├── docs
    │   └── img
    │       ├── sea-wallpaper.png
    │       └── tsunami-hyprland.png
    ├── flake.lock
    ├── flake.nix
    ├── home-manager
    │   ├── home.nix
    │   ├── lagoon.nix
    │   └── tsunami.nix
    ├── hosts
    │   ├── lagoon
    │   │   ├── default.nix
    │   │   └── hardware-configuration.nix
    │   └── tsunami
    │       ├── default.nix
    │       └── hardware-configuration.nix
    ├── packages
    │   └── default.nix
    ├── README.md
    └── system
        └── default.nix

### Screenshots
Host `tsunami` running Hyprland with Waybar:
![tsunami-hyprland](docs/img/tsunami-hyprland.png)
