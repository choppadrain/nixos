# cli bundle
{...}: {
  imports = [
    ./zsh.nix
  ];
  
  zsh.enable = 
     lib.mkDefault true;

}
