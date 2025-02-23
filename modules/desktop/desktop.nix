{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./drivers.nix
      ./networking.nix
      #./ssh.nix
      ./locales.nix
      ./users.nix
    ];

}
