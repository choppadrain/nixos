# steam.nix
{ pkgs, ...}:

{
  programs  = {
    gamemode.enable = true;

    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    mangohud
    gamescope

  ];

  protontricks = {
    enable = true;

  };

}
