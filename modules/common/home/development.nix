{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
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
