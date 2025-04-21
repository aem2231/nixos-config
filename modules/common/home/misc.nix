{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    cmatrix
    genact
    sl
    cowsay
    cbonsai
    figlet
    wtf
    pipes-rs
    pipes
    almonds
    cava
  ];
}

