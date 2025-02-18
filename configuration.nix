
{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/system/boot.nix
      ./modules/system/base.nix
      ./modules/system/locales.nix
      ./modules/system/utils.nix
      ./modules/system/users.nix
      ./modules/system/bashAliases.nix
      ./modules/system/fonts.nix
      ./modules/system/steam.nix
      ./modules/system/desktop.nix
      ./modules/system/direnv.nix
    ];
  
  
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [ ];

  system.stateVersion = "23.11"; # Did you read the comment?
}
