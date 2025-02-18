{ config, pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerdfonts
    dejavu_fonts
    fira-code
    noto-fonts
    noto-fonts-emoji
  ];
}
