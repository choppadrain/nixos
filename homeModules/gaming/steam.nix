# steam.nix
{ pkgs, lib, config, ... }:

{
  options = {
    steam.enable = lib.mkEnableOption "enable steam";
  };

  config = lib.mkIf config.steam.enable {
    # Основные настройки Steam
    programs.steam = {
      enable = true;
      gamescopeSession.enable = true;
    };

    # Дополнительные компоненты
    #programs.gamemode.enable = true;
    #programs.protontricks.enable = true;
  };
}
