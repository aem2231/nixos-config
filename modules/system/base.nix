{ config, pkgs, ...}:

{
  imports = [
    ./base/bluetooth.nix
    ./base/flatpak.nix
    ./base/nix-stuff.nix
    ./base/sound.nix
    ./base/system-networking.nix
  ];
}
