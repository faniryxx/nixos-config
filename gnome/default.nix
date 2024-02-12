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
                unmaximize=[];
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
            # Pop-shell active hint color
            "org/gnome/shell/extensions/pop-shell" = {
                hint-color-rgba="rgba(105, 105, 105, 1)";
            };
            # Extensions enable by default
            "org/gnome/shell" = {
                enabled-extensions=[
                    "AlphabeticalAppGrid@stuarthayhurst"
                    "blur-my-shell@aunetx" 
                    "dash-to-dock@micxgx.gmail.com" 
                    "launch-new-instance@gnome-shell-extensions.gcampax.github.com" 
                    "mediacontrols@cliffniff.github.com"
                    "pop-shell@system76.com"
                ];
            };
            # Disable Gnome Super+number app shortcuts
            "org/gnome/shell/keybindings" = {
                switch-to-application-1 = [];
                switch-to-application-2 = [];
                switch-to-application-3 = [];
                switch-to-application-4 = [];
                switch-to-application-5 = [];
                switch-to-application-6 = [];
                switch-to-application-7 = [];
                switch-to-application-8 = [];
                switch-to-application-9 = [];
            };
        };
    };
}
