  GNU nano 8.0                                                                 bluetooth.nix                                                                  Modified
  GNU nano 8.0                                                                    base.nix
{ config, pkgs, ... }:

{
  # Enable Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
}
