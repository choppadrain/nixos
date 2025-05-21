{lib, config, ...}: {

 options = {
   kitty.enable = lib.mkEnableOption "kitty";     
 };
 
 config = lib.mkIf config.kitty.enable {
    programs = {
       kitty = {
         settings = {
            cursor_trail = "1";                    
            cursor_trail_decay = "0.075 0.225";
            background_opacity = "0.7";
            disable_ligatures = "never";                   
            hide_window_decorations = "no";                    
                                };
                        };
                };   
        };
}
