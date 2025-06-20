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
    ./../../homeModules/cli/yazi.nix
    ./../../homeModules/terminals/kitty.nix
    ./../../bundles/stylixbundle.nix
    #./../../nixosModules/compositors/niri/nirihome.nix
  ];

  home.username = "choppadrain";
  home.homeDirectory = "/home/choppadrain";
  #  ---=== ENABLE/DISABLE MY STUFF THERE ===---
  zsh.enable = true;
  stylix.enable = true;
  waybar.enable = true;
  #hyprland.enable = true;
  yazi.enable = true;
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
    aseprite
    #inputs.apple-emoji-linux.packages.${pkgs.system}.apple-emoji-linux
    #inputs.apple-fonts.packages.${pkgs.system}.sf-mono-nerd
    #inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd
    inputs.self.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
