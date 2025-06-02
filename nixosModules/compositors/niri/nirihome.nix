{
 lib,
 config,
 pkgs,
 ...

}: {
  programs.niri = {
     settings = {
        outputs."DP-3".scale = 1.0;
        environment  = {
           TERMINAL = "kitty";
           __NV_PRIME_RENDER_OFFLOAD = "1";
           __GLX_VENDOR_LIBRARY_NAME = "nvidia";
         }; 
        spawn-at-startup = "waybar";
         input = {
           mod             
                        
                        
                        
                        
        };      
      };    
   };
}
