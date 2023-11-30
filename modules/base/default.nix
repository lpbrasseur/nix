{ pkgs, ... }:

{
  imports = [
    ./helix
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    htop

    blackbox-terminal

    thunderbird
    keepassxc
    seafile-client
    spotify
  ];

  programs.firefox = {
    enable = true;
    package = pkgs.firefox-wayland;
  };
}
