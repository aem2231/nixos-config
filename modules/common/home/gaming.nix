{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lutris            
    protonup-qt    
    lunar-client
    superTuxKart
    lunar-client
  ];
}
