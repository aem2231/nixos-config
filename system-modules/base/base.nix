# /etc/nixos/system-modules/base.nix
{ config, pkgs, ... }:

{
  imports = [
    ./base/bluetooth.nix
    ./base/flatpak.nix
    ./base/nix_stuff.nix
    ./base/sound.nix
    ./base/system-networking.nix
  ];
}
