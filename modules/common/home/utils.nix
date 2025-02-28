{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    vlc
    sxhkd
    grimblast
    obs-studio
    playerctl
    btop
    grim
    jq
    slurp
    ethtool
    hyprshot
    onlyoffice-bin
    feh
    yazi
    inkscape
    neovim
    ffcast
    slop
    xclip
  ];
}
