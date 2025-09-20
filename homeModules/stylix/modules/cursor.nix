{pkgs, ...}: {
  environment.variables.XCURSOR_SIZE = "15";
  stylix.cursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 15;
  };
}
