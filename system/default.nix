# Common system parameters
{ config, pkgs, ... }:

{
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Add font-awesome for waybar icons
    fonts.packages = with pkgs; [
        font-awesome
        nerdfonts
    ];

    # Enable networking
    networking.networkmanager.enable = true;

    # Set your time zone.
    time.timeZone = "Europe/Paris";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_US.UTF-8";

    # Enable flakes
    nix.settings.experimental-features = ["nix-command" "flakes"];

    # Set zsh as default shell
    programs.zsh.enable = true;
    users.defaultUserShell = pkgs.zsh;

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Configure keymap in X11
    services.xserver = {
        xkb.layout = "fr";
        xkb.variant = "";
    };

    # Configure console keymap
    console.keyMap = "fr";

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    sound.enable = true;
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
    };

    # Enable Bluetooth
    hardware.bluetooth.enable = true; # enables support for Bluetooth
    hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
    services.blueman.enable = true;

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.faniryxx = {
        isNormalUser = true;
        description = "faniryxx";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            firefox
        ];
    };

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Enable the OpenSSH daemon.
    services.openssh.enable = true;

    system.stateVersion = "23.11"; # Did you read the comment?
}