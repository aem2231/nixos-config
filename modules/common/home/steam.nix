{ config, pkgs, ... }:

{

  #steam
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
}
