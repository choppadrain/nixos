{pkgs, ...}: {
  boot.initrd.kernelModules = ["amdgpu"];
  services.xserver.videoDrivers = ["amdgpu"];
  hardware.graphics.extraPackages = with pkgs; [
    amdvlk
  ];
}
