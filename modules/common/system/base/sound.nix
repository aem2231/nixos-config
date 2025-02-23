{ config, pkgs, ... }:

{
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

  # Galaxy Buds stuff
  environment.systemPackages = [
    pkgs.galaxy-buds-client
    pkgs.earbuds
  ];
}
