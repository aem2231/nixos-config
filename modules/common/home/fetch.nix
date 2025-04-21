{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neofetch
    pfetch
    nitch
    owofetch
    yafetch
    afetch
    bunnyfetch
    hyfetch
    fastfetch
  ];
}
