# zsh
{ lib, config, pkgs, ... }:

{
  options = {
    zsh.enable = lib.mkEnableOption "enable zsh with oh-my-zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ 
          "git"    
          "history"
	  "fzf"
	  "thefuck"
	  "zsh-syntax-highlight"
        ];
        theme = "half-life";
      };
      
      initExtra = ''
        # custom stuff will be in there
      '';
    };
  };
}
