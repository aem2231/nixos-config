{ pkgs, ...}:
{
  # Enable keyboard
  hardware.tuxedo-drivers.enable = true;
  
  #services.power-profiles-daemon.enable = true;
  
  hardware.tuxedo-rs = {
    enable = true;
    tailor-gui.enable = true;
  };

  services.xserver.videoDrivers = ["amdgpu"];

  hardware.graphics.extraPackages = with pkgs; [
    amdvlk
  ];
  # For 32 bit applications 
  hardware.graphics.extraPackages32 = with pkgs; [
    driversi686Linux.amdvlk
  ];

  #powerManagement.enable = true;
  services.tlp = {
    enable = true;
    settings = {
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_SCALING_GOVERNOR_ON_AC = "peformance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
    };
  };
}

