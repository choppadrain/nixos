{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    p7zip-rar
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
