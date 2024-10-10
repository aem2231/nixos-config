{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    #Utilities
    vim
    wget
    curl
    unzip
    htop
    lf
    wcalc
    pamixer
  ];
}
