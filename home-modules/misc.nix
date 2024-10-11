{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    cmatrix
    sl
    cowsay
  ];
}

