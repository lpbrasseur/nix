{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver = {
    layout = "fr";
    xkbVariant = "";
  };

  services.gnome = {
    core-utilities.enable = false;
    tracker-miners.enable = true;
  };

}
