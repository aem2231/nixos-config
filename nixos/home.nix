{ config, pkgs, ... }:

{
  home.username = "eris";
  home.homeDirectory = "/home/eris";
  
    imports = [
    ./home/desktop.nix
    ./home/notifications.nix
    ./home/development.nix
    ./home/utils.nix
    ./home/fetch.nix
    ./home/misc.nix
  ];  
  
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
