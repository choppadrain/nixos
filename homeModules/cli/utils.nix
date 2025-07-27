{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    p7zip
    ripgrep
    ncdu
    iftop
    btop
    htop
    fastfetch

    mpv
    ffmpeg
    jq
    resvg
    poppler
  ];
}
