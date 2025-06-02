{
  lib,
  pkgs,
  config,
  inputs,
  ...
}:

{
  imports = [ inputs.niri.nixosModules.niri ];

  environment.systemPackages = with pkgs; [
        xwayland-satellite
        ];
  programs.niri = {
    enable = true;      
    package = pkgs.niri;
  };
}
 







