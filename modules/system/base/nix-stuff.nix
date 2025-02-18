{ config, pkgs, ... }:

{

  # Enable experimental features
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Automatic Garbage Collection
  nix.gc = {
             automatic = true;
             dates = "weekly";
             options = "--delete-older-than 7d";
           };
}
