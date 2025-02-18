{ config, pkgs, ... }:

{
  # Set the hostname for the system
  networking.hostName = "nixos";

  # Enable NetworkManager for managing network connections
  networking.networkmanager.enable = true;

  # Enable the firewall for basic security
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 5000 ];


  # Enable SSH server (optional, if needed system-wide)
  services.openssh.enable = true;
}
