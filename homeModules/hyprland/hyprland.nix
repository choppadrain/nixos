{lib, config, ...}: {

   options = {
     hyprland.enable = lib.mkEnableOption "enable hyprland";
   };

   config = lib.mkIf config.hyprland.enable {
     wayland.windowManager.hyprland = {
       enable = true;
       
       settings = {
          general = {
            gaps_in = "10";
            gaps_out = "15";
	    border_size = "4";
	    "col.active_border" = "rgba(458458aa)";
	    "col.inactive_boder" = "rgba(00081163)";

	  };

          decoration = {
            rounding = "4";
	    active_opacity = "1.0";
	    inactive_opacity = "0.9";
          };

          shadow = {
            enabled = true;
	    range = "20";
            render_power = "4";
	    color = "rgba(00081163)";
          };

          blur = {
            enabled = true;
	    size = "8";
	    passes = "3";
	    xray = true;
	    vibrancy = "0.1";
          };
        };	  

	  input = {
            kb_layout = "us, ru";
            kb_options = "grp:alt_shift_toggle";
	    sensitivity = "0";
	    follow_mouse = "1";
	    accel_profile = "flat";
	  };
     };
   };
}
