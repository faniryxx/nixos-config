#!/run/current-system/sw/bin/bash
# Rebuild system
nixos-rebuild switch --flake /home/faniryxx/nixos-config#lagoon-hyprland

echo "Copying hyprland configuration to ~/.config ..."
mkdir -p /home/faniryxx/.config/hypr/
cp /home/faniryxx/nixos-config/.config/hypr/lagoon.conf /home/faniryxx/.config/hypr/hyprland.conf

echo "Copying waybar configuration to ~/.config ..."
mkdir -p /home/faniryxx/.config/waybar/
cp /home/faniryxx/nixos-config/.config/waybar/config /home/faniryxx/.config/waybar/config
cp /home/faniryxx/nixos-config/.config/waybar/style.css /home/faniryxx/.config/waybar/style.css

echo "Copying wlogout configuration to ~/.config ..."
mkdir -p /home/faniryxx/.config/wlogout/
cp /home/faniryxx/nixos-config/.config/wlogout/layout /home/faniryxx/.config/wlogout/layout
cp /home/faniryxx/nixos-config/.config/wlogout/style.css /home/faniryxx/.config/wlogout/style.css
cp -r /home/faniryxx/nixos-config/.config/wlogout/icons /home/faniryxx/.config/wlogout/icons