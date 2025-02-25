{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
#    jetbrains.clion
    zed-editor
    godot_4
    android-studio
    gcc
    cmake
    gnumake
    gdb
    qemu
    rust-analyzer
    mgba
    qFlipper
    docker-compose
  ];
}
