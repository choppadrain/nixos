{lib, config, ...}: {

 options = {
   kitty.enable = lib.mkEnableOption "kitty";     
 };
 
 config = lib.mkIf config.kitty.enable {
    programs = {
       kitty = lib.mkForce {
         enable = true;
         settings = {
            cursor_trail = "1";                    
            cursor_trail_decay = "0.075 0.175";
            cursor_trail_start_threshold = "0";
            background_opacity = "1";
            disable_ligatures = "never";                   
            hide_window_decorations = "no";                    
                                };
                        };
                };   
        };
}
