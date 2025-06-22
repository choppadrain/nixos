{pkgs, ...}: {
  packages = with pkgs;
    [
      ibm-plex
    ]
    ++ (builtins.filter lib.attrsets.isDerivation (builtins.attrValues nerd-fonts));
}
