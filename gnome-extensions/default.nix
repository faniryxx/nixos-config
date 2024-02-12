# Gnome extensions-related
{config, pkgs, ...}:

{
    # Enabled Gnome extensions by default
    home-manager.users.faniryxx = {
        dconf.settings = {
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
        };
    };
}