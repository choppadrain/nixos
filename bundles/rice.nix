{
  lib,
  config,
  ...
}: {
  options = {
    rice.enable = lib.mkEnableOption "rice";
  };

  config = lib.mkIf config.rice.enable {
    imports = [
      ./../homeModules/fonts/default.nix
    ];
  };
}
