{ config, pkgs, ... }:
let
  amdgpu-kernel-module = pkgs.callPackage ./amdgpu-kernel-module.nix {
    # Make sure the module targets the same kernel as your system is using.
    kernel = config.boot.kernelPackages.kernel;
  };

  # Patch for amdgpu
  amdgpu-stability-patch = pkgs.fetchpatch {
    name = "amdgpu-stability-patch";
    url = "https://github.com/SeryogaBrigada/linux/compare/20b4ffd302f8de1b9d0bc31aa5dfc8941f11a62f...d191232a158857e101238a67e8f1428749a5bf55.patch";
    hash = "sha256-axvXhc88vN1046HPUfol1868ifZKdtuWRNG1f89T+Ss=";
  };

in
{
  # amdgpu instability with context switching between compute and graphics
  boot.extraModulePackages = [
    (amdgpu-kernel-module.overrideAttrs (_: {
      patches = [
        amdgpu-stability-patch
      ];
    }))
  ];
}
