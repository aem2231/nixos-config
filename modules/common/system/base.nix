{ config, pkgs, ...}:

{
  imports = [
    ./base/bluetooth.nix
    ./base/nix-stuff.nix
    ./base/sound.nix
    ./base/boot.nix
  ];
}
