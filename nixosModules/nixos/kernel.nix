{pkgs, ...}: {
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.initrd.kernelModules = ["amdgpu"];
  boot.kernelParams = [
    "amdgpu.ppfeaturemask=0xffffffff"
    "amdgpu.gfxoff=0"
    "amdgpu.runpm=0"
  ];
  boot.kernelModules = ["hid_xpadneo"];
}
