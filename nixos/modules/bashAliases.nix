{ config, pkgs, ... }:

{
  #Bash aliases
  programs.bash.shellAliases = {
    eepymode = "systemctl suspend";
    powernap = "reboot";
  };
}
