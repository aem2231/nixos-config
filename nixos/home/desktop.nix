{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    thunderbird
    alacritty
    vesktop
    rofi-wayland
    spicetify-cli
    swww
  ];
}
