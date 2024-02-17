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
    │   └── img
    │       └── tsunami-hyprland.png
    ├── flake.lock                              # File used by Nix to freeze package versions to make sure a working environment can be replicated on another host
    ├── flake.nix                               # Flake config file
    ├── home-manager                            # Home-manager config files, used for user and user packages management
    │   ├── home.nix
    │   ├── hyprland.nix
    │   ├── lagoon-hyprland.nix
    │   └── tsunami-hyprland.nix
    ├── hosts                        
    │   ├── lagoon-gnome                        # Config files for host lagoon running on Gnome
    │   │   ├── default.nix
    │   │   └── hardware-configuration.nix
    │   ├── lagoon-hyprland                     # Config files for host lagoon running on Hyprland
    │   │   ├── default.nix
    │   │   └── hardware-configuration.nix
    │   ├── tsunami-gnome                       # Config files for host tsunami running on Gnome
    │   │   ├── 60-openrgb.rules
    │   │   ├── default.nix
    │   │   └── hardware-configuration.nix
    │   └── tsunami-hyprland                    # Config files for host tsunami running on Hyprland
    │       ├── 60-openrgb.rules
    │       ├── default.nix
    │       └── hardware-configuration.nix
    ├── packages                                # Config files where packages to be installed are declared
    │   ├── default.nix                         # Packages common to all DEs
    │   ├── gnome.nix                           # Packages to be installed only on Gnome: Gnome extensions, etc.
    │   └── hyprland.nix                        # Packages to be installed only on Hyprland: Waybar, wlogout, themes, etc.
    ├── pop-shell                   
    │   └── kb_shortcuts.nix                    # Custom keyboard shortcuts that will overwrite Gnome defaults
    ├── README.md
    ├── system
    │   └── default.nix                         # Common system settings: default shell, bluetooth status, enabled services, etc.
    └── .zshrc                                  # Config file for zsh shell

### Screenshots
Host `tsunami` running Hyprland with Waybar:
![tsunami-hyprland](docs/img/tsunami-hyprland.png)
