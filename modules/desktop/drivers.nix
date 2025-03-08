{ config, pkgs, inputs, ... }:

{
  services.xserver.videoDrivers = ["amdgpu"];
  
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };

    amdgpu.amdvlk = {
      enable = true;
      support32Bit.enable = true;
    };
  };

  environment.variables = {
    ROC_ENABLE_PRE_VEGA = "1";
  };

  environment.systemPackages = [
    pkgs.rocmPackages.rocm-smi
  ];
}
