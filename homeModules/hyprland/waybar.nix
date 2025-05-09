{lib, config, pkgs, ... }:
{
  options = {
    waybar.enable lib.mkEnableOptions "enable waybar+cfg";
  };
  options = lib.mkIf config.waybar.enable {
  programs =  {
    waybar = {
    enable = true;

    settings = {
      main = {
        layer = "top";
	position = "top";

	height = 20;
	margin = "5px 5px 0px 5px";
 
        modules-left = ["custom/logo" "custom/notification"];
	modules-center [];
	modules-right = [];

	"custom/notification" = {
            tooltip = false;
            format = "{icon}";
            format-icons = {
              notification = "󰅸";
              none = "󰂜";
              dnd-notification: "󰅸";
              dnd-none = "󱏨";
              inhibited-notification: "󰅸";
              inhibited-none = "󰂜";
              dnd-inhibited-notification = "󰅸";
              dnd-inhibited-none = "󱏨";
             };
             return-type = "json";
             exec-if = "which swaync-client";
             exec = "swaync-client -swb";
             on-click-right = "swaync-client -d -sw";
             on-click = "swaync-client -t -sw";
             escape = true;
            };
         "custom/logo" = {
           format = ""


	 };



         };

       
       };
      };
  
    };
  };
}

