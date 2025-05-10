{lib, config, ... }:
{
  options = {
    waybar.enable = lib.mkEnableOption "enable waybar+cfg";
  };
  config = lib.mkIf config.waybar.enable {
   programs =  {
    waybar = {
      enable = true;

      settings = {
        main = {
          layer = "top";
	  position = "top";

	  height = 25;
	  margin = "5px 5px 0px 5px";
 
          modules-left = ["custom/logo"];
	  modules-center = [];
	  modules-right = ["cpu" "memory" "tray" "clock" "custom/notifications"];

          "custom/logo" = {
            format = " ";
            on-click = "hyprlock";
	  };

	  "clock" = {
            format = "{:%a %d %b %H:%M}";
            tooltip = false;
	  };
	  "custom/notifications" = {
            format = "{icon}{}";
	    tooltip = false;
	    rotate = 0;
	    format-icons = {
	       notification = " <span foreground='red'><sup></sup></span>";
               none = " ";
               dnd-notification = " <span foreground='red'><sup></sup></span>";
               dnd-none = " ";
               inhibited-notification = " <span foreground='red'><sup></sup></span>";
               inhibited-none = " ";
               dnd-inhibited-notification = " <span foreground='red'><sup></sup></span>";
               dnd-inhibited-none = " ";
	    };
	     return-type = "json";
             exec-if = "which dunstctl";
             exec = "swaync-client -swb";
             on-click = "swaync-client -t -sw";
             on-click-right = "dunstctl close-all";
             escape =  true;
	  };
          "cpu" = {
	    format = "{usage}% ";
	    interval = 2;
	    tooltip = false;
	  };
	  
	  "memory" = {
            format = " {used:0.1f}G/{total:0.1f}G";
	    tooltip = false;
            interval = 5;
	  };

	  "tray" = {
            spacing = 10;
	  };

        };

       
        };
       };
  
     };
  };
}

