{pkgs, ...}: {
  home.packages = with pkgs; [
    gowall
    swww
  ];
}
