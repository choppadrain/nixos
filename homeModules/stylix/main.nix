{pkgs, ...}: {

          stylix.enable = true;
          stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyodark.yaml";
          stylix.polarity = "dark";
} 
