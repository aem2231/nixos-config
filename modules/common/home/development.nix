{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
    jetbrains.clion
    jetbrains.rider
    jetbrains.idea-community
    jetbrains.pycharm-community
    zed-editor
    godot_4
    android-studio
    gcc
    cmake
    gnumake
    gdb
    quickemu
    rust-analyzer
    mgba
    qFlipper
    docker-compose
  ];
}
