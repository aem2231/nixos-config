{ config, pkgs, ... }:

{
  # Configure localization
  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Europe/London";
  services.xserver.xkb.layout = "gb";
}
