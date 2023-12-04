{ pkgs, ... }:

{
  users.users.leopold = {
    packages = with pkgs; [
      telegram-desktop
      discord
      mumble
      fractal
      signal-desktop
    ];
  };
}
