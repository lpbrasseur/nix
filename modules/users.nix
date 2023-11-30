{ config, pkgs, ... }:

{
  users.users.leopold = {
    isNormalUser = true;
    description = "leopold";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.leopold.home.stateVersion = "23.05";
}
