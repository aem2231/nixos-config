{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    lutris            
    protonup-qt    
    lunar-client
    superTuxKart
  ];
}
