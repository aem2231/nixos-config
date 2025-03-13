{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./networking.nix
      #./ssh.nix
      ./locales.nix
      ./users.nix
      ./drivers.nix
    ];
}
