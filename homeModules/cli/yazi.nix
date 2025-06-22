{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    yazi.enable = lib.mkEnableOption "yazi";
  };
  config = lib.mkIf config.yazi.enable {
    programs = {
      yazi = {
        package = pkgs.yazi;
        enable = true;
        enableZshIntegration = true;
        shellWrapperName = "yz";
        settings = {
          plugins = with pkgs.yaziPlugins; {
            "full-border.yazi" = full-border;
          };

          initLua = ''
            require("full-border"):setup({ type = ui.Border.ROUNDED })
          '';
        };
      };
    };
  };
}
