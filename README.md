# nixos-config
Nix configuration files for reproductible environments.

The main objective of the repo is to help create near-identic environments on multiple hosts, without having to rice every host from the beginning after a fresh install of a linux distro.

### Repository content
    .
    ├── docs
    │   └── img
    │       ├── sea-wallpaper.png
    │       └── tsunami-hyprland.png
    ├── flake.lock
    ├── flake.nix
    ├── home-manager
    │   └── home.nix
    ├── hosts
    │   ├── lagoon
    │   │   ├── default.nix
    │   │   └── hardware-configuration.nix
    │   └── tsunami
    │       ├── 60-openrgb.rules
    │       ├── default.nix
    │       └── hardware-configuration.nix
    ├── packages
    │   └── default.nix
    ├── pop-shell
    │   └── kb_shortcuts.nix
    ├── README.md
    └── system
        └── default.nix

### Screenshots
Host `tsunami` running Hyprland with Waybar:
![tsunami-hyprland](docs/img/tsunami-hyprland.png)
