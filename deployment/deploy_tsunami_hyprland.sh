#!/run/current-system/sw/bin/bash
# Rebuild system
nixos-rebuild switch --flake /home/faniryxx/nixos-config#tsunami-hyprland

# Copy hyprland configuration to correct folder
cp /home/faniryxx/nixos-config/hypr/tsunami.conf /home/faniryxx/.config/hypr/hyprland.conf