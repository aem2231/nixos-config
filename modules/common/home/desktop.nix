{ inputs, pkgs, system, ... }:

{
  home.packages = with pkgs; [
    firefox
    thunderbird
    ghostty
    vesktop
    rofi-wayland
    swww
  ];
}
