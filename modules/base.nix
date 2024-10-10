{ config, pkgs, ... }:

{
  # Enable networking
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  # Enable firewall
  networking.firewall.enable = true;

  # Enable Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;

  # Enable sound with pipewire.
  #sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # If you want to use JACK applications
  };

  # Enable the OpenSSH server.
  services.openssh.enable = true;

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

  # Flatpack
  services.flatpak.enable = true;

}

