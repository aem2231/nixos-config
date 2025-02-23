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
    ffmpeg_6
    ghostscript
    graphicsmagick
  ];

  virtualisation.docker.enable = true;
}
