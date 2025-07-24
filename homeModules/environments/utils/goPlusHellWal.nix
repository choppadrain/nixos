{pkgs, ...}: {
  home.packages = with pkgs; [
    hellwal
    gowall
  ];
}
