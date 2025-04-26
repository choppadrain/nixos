# zsh
{ pkgs, inputs, ...}:

{
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
