
{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules/tuxedobook/tuxedobook.nix
      ../../modules/common/system/base.nix
      ../../modules/common/system/bashAliases.nix
      ../../modules/common/system/desktop.nix
      ../../modules/common/system/direnv.nix
      ../../modules/common/system/notifications.nix
      ../../modules/common/system/utils.nix
      ../../modules/common/system/steam.nix
    ];


  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [ ];

  system.stateVersion = "24.11"; # Did you read the comment?
}
