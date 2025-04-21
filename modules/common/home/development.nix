{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vscode
#    jetbrains.clion
    zed-editor
    godot_4
    lmstudio
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
