{ pkgs, ...}
{
  # Enable keyboard
  hardware.tuxedo-keyboard.enable = true;

  environment.systemPackages = [
    pkgs.linuxKernel.packages.linux_zen.tuxedo-drivers
  ];
}
