{ pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver = {
    layout = "fr";
    xkbVariant = "";
  };

  services.gnome = {
    core-utilities.enable = true;
    core-os-services.enable = true;
    tracker-miners.enable = true;
  };

  environment.gnome.excludePackages = with pkgs.gnome; [
    #baobab # disk usage analyzer
    cheese # photo booth
    #eog # image viewer
    epiphany # web browser
    #gedit # text editor
    simple-scan # document scanner
    #totem # video player
    yelp # help viewer
    #evince # document viewer
    #file-roller # archive manager
    geary # email client
    #seahorse # password manager

    # these should be self explanatory
    #gnome-calculator
    #gnome-calendar
    gnome-characters
    #gnome-clocks
    gnome-contacts
    gnome-font-viewer
    gnome-logs
    #gnome-maps
    #gnome-music
    #gnome-screenshot
    #gnome-system-monitor
    gnome-weather
    #gnome-disk-utility
    pkgs.gnome-connections
  ];
  
  environment.systemPackages = with pkgs; [
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.vitals
    #Wayland screenshare
    #xdg-desktop-portal-gnome #inutile et ralentit le pc ?
    xdg-desktop-portal
  ];
  
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  
  
}
