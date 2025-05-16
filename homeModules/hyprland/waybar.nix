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

	  height = 20;
	  margin = "px px 0px px";
 
          modules-left = ["custom/logo"];
	  modules-center = [];
	  modules-right = ["cpu" "memory" "pulseaudio" "tray" "hyprland/language" "clock" "custom/notifications"];

          "custom/logo" = {
            format = "  ";
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
	    format = " {usage}%";
	    interval = 2;
	    tooltip = false;
	  };
	  
	  "memory" = {
            format = "  {used:0.1f}G/{total:0.1f}G";
	    tooltip = false;
            interval = 5;
	  };

	  "tray" = {
            spacing = 5;
	  };

          "pulseaudio" = {
              "scroll-step" = 5;
              "format" = " {icon}{volume}% {format_source}";
              "format-muted" = "󰖁 Muted";
	      "format-source" = " {volume}%";
	      "format-source-muted" = " ";
              "format-icons" = {
                "default" = [ " " " " "  " ];
              };
              "on-click" = "pamixer -t";
              "tooltip" = false;
            };

	   "hyprland/language" = {
              "format" = "  {} ";
	      "format-en" = "en";
	      "format-ru" = "ru";
	      "format-ro" = "ro";
	   };
 


        };

        };
	style = ''
	  * {
	   padding: 0.1rem;
	   font-size: 15px;
           font-family: "SFMono Nerd Font Bold";
	  }
          window#waybar {
            background-color: rgba(0, 8, 17, 0.7);
	  }


	'';
       };
  
     };
  };
}

