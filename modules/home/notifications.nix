{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    dunst
    libnotify
  ];
}
