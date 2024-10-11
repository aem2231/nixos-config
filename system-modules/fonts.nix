{ config, pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    nerdfonts
  ];
}
