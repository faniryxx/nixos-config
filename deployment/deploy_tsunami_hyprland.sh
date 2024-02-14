#!/run/current-system/sw/bin/bash
# Rebuild system
nixos-rebuild switch --flake /home/faniryxx/nixos-config#tsunami-hyprland

echo "Copying hyprland configuration to correct folder..."
cp /home/faniryxx/nixos-config/.config/hypr/tsunami.conf /home/faniryxx/.config/hypr/hyprland.conf

echo "Copying waybar configuration to correct folder..."
cp /home/faniryxx/nixos-config/.config/waybar/config /home/faniryxx/.config/waybar/config
cp /home/faniryxx/nixos-config/.config/waybar/style.css /home/faniryxx/.config/waybar/style.css