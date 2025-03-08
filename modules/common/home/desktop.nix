{ inputs, pkgs, system, ... }:

{
  home.packages = with pkgs; [
    firefox
    thunderbird
    ghostty
    vesktop
    discordo
    swww
    rofi-bluetooth
    rofi-screenshot
  ];
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme = ./themes/catppuccin.rasi;
    plugins = [
      pkgs.rofi-emoji-wayland
      pkgs.rofi-calc
      pkgs.rofi-power-menu
    ];
    extraConfig = {
      modes = "window,drun,run,ssh,combi,calc,bluetooth:${pkgs.rofi-bluetooth}/bin/rofi-bluetooth,screenshot:${pkgs.rofi-screenshot}/bin/rofi-screenshot,power-menu:${pkgs.rofi-power-menu}/bin/rofi-power-menu";    
    };
  };
}
