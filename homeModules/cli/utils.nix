{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    p7zip
    ripgrep
    ncdu
    iftop

    mpv
    ffmpeg
    jq
    resvg
    poppler
  ];
}
