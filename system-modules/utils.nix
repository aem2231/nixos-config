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
  ];
}
