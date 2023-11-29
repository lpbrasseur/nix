{ config, pkgs, ... }:

{
  users.users.leopold = {
    isNormalUser = true;
    description = "leopold";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
