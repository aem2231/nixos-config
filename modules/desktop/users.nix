{ config, pkgs, ... }:

{
  # Define user accounts
  users.users.eris = {
    isNormalUser = true;
    description = "Eris";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.bash;
  };

  users.extraGroups.docker.members = ["eris"];
}
