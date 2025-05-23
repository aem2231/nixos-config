{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    #Utilities
    vim
    unzip
    htop
    lf
    wcalc
    pamixer
    binutils
    ueberzug
    ghostscript
    graphicsmagick
  ];

  hardware.flipperzero.enable = true;
  virtualisation.docker.enable = true;
}
