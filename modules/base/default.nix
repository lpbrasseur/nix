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
    
    ubuntu_font_family

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
