{ config, pkgs, inputs, ... }:

{
  # SSH client configuration for user (if needed)
  programs.ssh = {
    enable = true;
    forwardAgent = true;
    extraConfig = ''
      # Add any additional SSH config here, if needed
    '';
  };
}
