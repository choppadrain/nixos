{...}: {
  imports = [
    ./schemes/kanagawa-dragon.nix
    #   ./modules
    ./modules/cursor.nix
    ./modules/fonts.nix
    #./modules/telegramTheme.nix
    #./modules/icons.nix
  ];
  stylix = {
    enable = true;
  };
}
