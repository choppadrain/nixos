# steam.nix
{ pkgs, lib, config, ... }:

{
  options = {
    steam.enable = lib.mkEnableOption "enable steam";
  };

  config = lib.mkIf config.steam.enable {
    option1 = 5;
    option2 = true;

    programs = {
      gamemode.enable = true;
      steam = {
        enable = true;
        gamescopeSession.enable = true;
      };
    };

    protontricks.enable = true;
  };
}
