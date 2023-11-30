{ pkgs, ... }:

{
  imports = [
    ./helix
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    htop

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
