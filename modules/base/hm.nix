{ pkgs, ... }:

{
    home-manager.nixosModules.home-manager;
    homeConfiguration = home-manager.nixosModules.home-manager.lib.homeManagerConfiguration;
}