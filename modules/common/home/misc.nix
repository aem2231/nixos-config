{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    cmatrix
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

