{ config, pkgs, inputs, ... }:

{
  # SSH client configuration for user (if needed)
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      AllowedUsers = null;
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password";
    }; 
  };
}
