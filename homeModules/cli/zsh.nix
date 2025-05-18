# zsh
{ lib, config, ... }: let
  aliases = {
    c = "clear";
    po = "poweroff";
    sn = "shutdown now";
    srn = "shutdown -r now";
    rbuild = "sudo nixos-rebuild switch --show-trace --flake ~/.dots\#nixos";
  };
in {
  options = {
    zsh.enable = lib.mkEnableOption "enable zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs = {

      zsh = {
	enable = true;
        shellAliases = aliases;
	completionInit = "";
        antidote = {
          enable = true;
	  useFriendlyNames = true;
          plugins = [
	    "mattmc3/ez-compinit kind:defer"
	    "zsh-users/zsh-syntax-highlighting kind:defer"
            "zsh-users/zsh-autosuggestions kind:defer"
	    "zsh-users/zsh-history-substring-search"
	    "zsh-users/zsh-completions kind:fpath path:src"
            "mattmc3/zfunctions"

	    "chisui/zsh-nix-shell"
	    "nix-community/nix-zsh-completions"


          ];
        };

	history = {
	  append = true;
	  findNoDups = true;
	  ignoreAllDups = true;
	  saveNoDups = true;
	  ignoreSpace = true;
	  path = "$HOME/.zsh_history";
#
	};

        envExtra = ''
          export EDITOR="nvim"
          export TERMINAL="kitty"
          export TERM="kitty"
          export BROWSER="zen"

	  eval "$(fnm env --use-on-cd --shell zsh)"
        '';
      };
    };
  };
}

