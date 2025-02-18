{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neofetch
    pfetch
    owofetch
    yafetch
    afetch
    bunnyfetch
    fastfetch
  ];
}
