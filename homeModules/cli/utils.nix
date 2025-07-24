{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    p7zip
    ripgrep
    ncdu
    iftop
    btop
    htop

    mpv
    ffmpeg
    jq
    resvg
    poppler
  ];
}
