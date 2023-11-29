{ config, pkgs, ... }:

{
    # KDE sous wayland
    services.xserver.enable = true;
    services.xserver.displayManager.defaultSession = "plasmawayland";
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

    # Clavier
    services.xserver = {
        layout = "fr";
        xkbVariant = "";
    };
}