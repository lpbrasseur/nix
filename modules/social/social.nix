{ config, pkgs, ... }:

{
    users.users.leopold = {
        packages = with pkgs; [
        telegram-desktop
        discord
        mumble
        ];
  };
}