{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri
  ];
  nixpkgs.overlays = [inputs.niri.overlays.niri];
  programs.niri.package = pkgs.niri-unstable;
  environment.variables.NIXOS_OZONE_WL = "1";
  environment.systemPackages = with pkgs; [
    wl-clipboard
    wayland-utils
    libsecret
    cage
    gamescope
    xwayland-satellite
  ];
  programs.niri.settings = {
    outputs."DP-2" = {
      scale = "1.0";
      mode = "1920x1080@144";
    };
    input = {
      keyboard.xkb = {
        layout = "en, ru";
        options = "grp:alt_shift_toggle";
      };
      mouse = {
        accel-profile = "flat";
      };
    };
    layout = {
      border = {
      };
      shadow = {
      };
    };
    binds = {
    };
    animations = {
    };
  };
}
