{ pkgs, inputs, lib, ... }:

{
  home.username = "eris";
  home.homeDirectory = "/home/eris";
  
    imports = [
    ../../modules/home/desktop.nix
    ../../modules/home/notifications.nix
    ../../modules/home/development.nix
    ../../modules/home/utils.nix
    ../../modules/home/fetch.nix
    ../../modules/home/misc.nix
    ../../modules/home/networking.nix
    ../../modules/home/gaming.nix
  ];  

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
