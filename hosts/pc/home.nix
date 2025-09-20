# my home-setup BTW
{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./../../homeModules/terminals/kitty.nix
    ./../../homeModules/shell/nushell.nix
    ./../../bundles/desktop.nix
    ./../../bundles/cli.nix
  ];

  home.username = "choppadrain";
  home.homeDirectory = "/home/choppadrain";

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    vesktop
    kitty
    telegram-desktop
    go
    hyprpaper
    gh
    hyprpolkitagent
    wofi
    btop
    inputs.zen-browser.packages."${system}".twilight
    obsidian
    wget
    #inputs.apple-fonts.packages.${pkgs.system}.sf-mono-nerd
    #inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd
    inputs.self.packages.${pkgs.stdenv.hostPlatform.system}.default
    mangohud
    protontricks
    winetricks
    wineWowPackages.full
    prismlauncher
    qbittorrent
    lutris
    protonup
    gamescope
  ];
  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
