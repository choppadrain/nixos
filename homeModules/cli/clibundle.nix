# cli bundle
{pkgs, lib, ...}: {
  imports = [
    ./zsh.nix
  ];
  
  zsh.enable = 
     lib.mkDefault true;

}
