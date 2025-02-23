{ config, pkgs, ... }:

{
  #ENable xpadneo
  hardware.xpadneo.enable = true;

  #steam
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  programs.gamemode.enable = true;
}
