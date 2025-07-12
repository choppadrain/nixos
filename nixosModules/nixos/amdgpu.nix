{pkgs, ...}: {
  #the only reason this exist because of the issue related to sporatic crashes on amd gpu, currently on july 2025 there is no option to declare gpu on nixos

  #https://wiki.gentoo.org/wiki/AMDGPU#Frequent_and_Sporadic_Crashes
  #https://gitlab.freedesktop.org/mesa/mesa/-/issues/11532
  #https://gitlab.freedesktop.org/drm/amd/-/issues/3067

  environment.systemPackages = with pkgs; [lact];
  systemd.packages = with pkgs; [lact];
  systemd.services.lactd.wantedBy = ["multi-user.target"];
}
