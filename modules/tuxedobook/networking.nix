{ config, pkgs, ... }:

{
  # Set the hostname for the system
  networking.hostName = "tuxedobook";

  # Enable NetworkManager for managing network connections
  networking.networkmanager.enable = true;

  # Enable the firewall for basic security
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 5000 22 ];


  # Enable SSH server (optional, if needed system-wide)
  services.openssh.enable = true;
}
