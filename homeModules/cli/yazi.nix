{lib, config, pkgs,  ...}: {
 options = {
   yazi.enable = lib.mkEnableOption "yazi";         
 };
 config = lib.mkIf config.yazi.enable {
        programs = {
        yazi = {
            enable = true;
            enableZshIntegration = true;
            shellWrapperName = "yz";
            settings = {
                plugins = with pkgs.yaziPlugins; {
                        #                   starship = starship;
                    rsync = rsync;
                    git = git;
                    chmod = chmod;
                    full-border = full-border;
                };

                initLua = ''
                    require("full-border"):setup({ type = ui.Border.ROUNDED })
                    require("git"):setup()
                '';
            };
        };  
      };
    };
}
