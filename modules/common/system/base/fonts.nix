{ config, pkgs, ... }:
{
  fonts.packages = with pkgs; [ 
    nerd-fonts.fira-mono
    nerd-fonts.fira-code
    nerd-fonts.symbols-only
    material-design-icons
    font-awesome
  ];
}
