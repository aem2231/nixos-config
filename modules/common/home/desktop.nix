{ inputs, pkgs, system, ... }:

{
  home.packages = with pkgs; [
    firefox
    thunderbird
    ghostty
    vesktop
    swww
  ];
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme = ./themes/catppuccin.rasi;
    plugins = [
      pkgs.rofi-emoji-wayland
      pkgs.rofi-calc
      pkgs.rofi-bluetooth
      pkgs.rofi-screenshot
      pkgs.rofi-power-menu
    ];
    extraConfig = {
      modes = "window,drun,run,ssh,combi,calc,power-menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu";    
    };
  };
}
