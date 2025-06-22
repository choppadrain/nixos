{
  lib,
  inpuy,
  config,
}: {
  fonts = {
    fontDir.enable = true;
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
      };
    };
  };
}
