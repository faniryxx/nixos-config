# Keyboard shortcuts adapted to popshell workflow
{ config, pkgs, ... }:

{
    home-manager.users.faniryxx = {
        dconf.settings = {
            # Window & workspace related
            "org/gnome/desktop/wm/keybindings" = {
                close=["<Shift><Super>a"];
                maximize=["<Super>m"];
                move-to-workspace-1=["<Shift><Super>1"];
                move-to-workspace-2=["<Shift><Super>2"];
                move-to-workspace-3=["<Shift><Super>3"];
                move-to-workspace-4=["<Shift><Super>4"];
                switch-to-workspace-1=["<Super>1"];
                switch-to-workspace-2=["<Super>2"];
                switch-to-workspace-3=["<Super>3"];
                switch-to-workspace-4=["<Super>4"];
                toggle-fullscreen=["<Super>f"];
            };
            # To avoid conflicts
            "org/gnome/mutter/keybindings" = {
                toggle-tiled-left=["<Super>equal"];
                toggle-tiled-right=["<Super>parenright"];
            };
            "org/gnome/settings-daemon/plugins/media-keys" = {
                custom-keybindings=[
                    "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                    "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
                    ];
            };
            "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
                binding="<Super>t";
                command="gnome-terminal";
                name="terminal";
            };
            # For lagoon
            "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
                binding="Launch4";
                command="asusctl profile -n";
                name="Toggle next asusctl profile";
            };
        };
    };
}
