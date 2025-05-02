# zsh
{ pkgs, inputs, ...}: {

  options = {
    zsh.enable = 
      lib.mkEnableOptions "enable zsh";
  };

  config = lib.mkIf config.zsh.enable {
    option1 = 5;
    option2 = true;
  };

  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
	#"zsh-autocompletions"
	"zsh-syntax-highlight"
	"thefuck"
	"fzf"
	"history"
      ];
      theme = "half-life";
    };


  };











}
