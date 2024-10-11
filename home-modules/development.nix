{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    jetbrains.clion
    jetbrains.rider
    jetbrains.idea-community
    gcc
    cmake
    gdb
    quickemu
  ];
}
