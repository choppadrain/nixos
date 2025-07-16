# my home-setup BTW
{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./../../homeModules/shell/zsh.nix
    ./../../homeModules/deUtils/waybar.nix
    ./../../homeModules/terminals/kitty.nix
    ./../../homeModules/shell/nushell.nix
    ./../../homeModules/stylix
    ./../../bundles/cliworkflow.nix
    #./../../bundles/rice.nix
    #./../../nixosModules/compositors/niri/nirihome.nix
  ];

  home.username = "choppadrain";
  home.homeDirectory = "/home/choppadrain";
  #  ---=== ENABLE/DISABLE MY STUFF THERE ===---
  stylix.enable = true;
  waybar.enable = true;
  #hyprland.enable = true;
  kitty.enable = true;

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    vesktop
    kitty
    telegram-desktop
    prismlauncher
    go
    hyprpaper
    kitty
    gh
    hyprpolkitagent
    wofi
    btop
    inputs.zen-browser.packages."${system}".twilight
    obsidian
    wget
    inputs.apple-emoji-linux.packages.${pkgs.system}.apple-emoji-linux
    #inputs.apple-fonts.packages.${pkgs.system}.sf-mono-nerd
    #inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd
    inputs.self.packages.${pkgs.stdenv.hostPlatform.system}.default
    mangohud
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
