{ config, pkgs, ... }:

{
    home-manager.users.faniryxx = {
        dconf.settings = {
            "org/gnome/desktop/wm/keybindings" = {
                close = ["<Shift><Super>a"];
            };
        };
    };
}
