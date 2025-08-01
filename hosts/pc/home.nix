# my home-setup BTW
{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./../../homeModules/shell/zsh.nix
    ./../../homeModules/terminals/kitty.nix
    ./../../homeModules/shell/nushell.nix
    ./../../bundles/desktop.nix
    ./../../bundles/cli.nix
    #./../../homeModules/stylix
    #./../../bundles/rice.nix
    #./../../nixosModules/compositors/niri/nirihome.nix
  ];

  home.username = "choppadrain";
  home.homeDirectory = "/home/choppadrain";
  #  ---=== ENABLE/DISABLE MY STUFF THERE ===---
  waybar.enable = true;
  kitty.enable = true;

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
  ];
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
  };
  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
