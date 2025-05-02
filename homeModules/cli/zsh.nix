# zsh
{ lib, config, pkgs, ... }: let
  aliases = {
    c = "clear";
    po = "poweroff";
    sn = "shutdown now";
    srn = "shutdown -r now";
    rbuild = "sudo nixos-rebuild switch --show-trace --flake ~/.dots#nixos";
  };
in {
  options = {
    zsh.enable = lib.mkEnableOption "enable zsh with oh-my-zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs = {
      bash = {
        enable = true;
        shellAliases = true;
      };

      zsh = {
        enable = true;
        shellAliases = aliases;
        antidote = {
          enable = true;
          useFriendlyNames = true;
          plugins = [
            "getantidote/useomz"
            "ohmyzsh/ohmyzsh path:plugins/git"
            "ohmyzsh/ohmyzsh path:plugins/sudo"
            "zsh-users/zsh-syntax-highlighting"
            "zsh-users/zsh-autosuggestions"
          ];
        };

        history = {
          append = true;
          findNoDups = true;
          ignoreAllDups = true;
          ignoreSpace = true;
          path = "$HOME/.zsh_history";
        };

        envExtra = ''
          export EDITOR="nvim"
          export TERMINAL="kitty"
          export TERM="kitty"
          export BROWSER="zen"
          export OPENER="xdg-open-gtk"
        '';
      };
    };
  };
}

