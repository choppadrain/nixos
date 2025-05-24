{lib, ... }:

let
  nixFiles = builtins.filter
    (file: file != "default.nix" && lib.hasSuffix ".nix" file)
    (builtins.attrNames (builtins.readDir ./.));

  modulePaths = map (file: ./. + "/${file}") nixFiles;

in
{
  imports = modulePaths;
}
