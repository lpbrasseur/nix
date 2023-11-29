{ config, pkgs, ... }:

{
  users.users.leopold = {
    packages = with pkgs; [
      prismlauncher
      jdk17
    ];
  };

  programs.steam.enable = true;
}
