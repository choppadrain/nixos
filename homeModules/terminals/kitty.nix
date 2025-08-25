{...}: {
  programs = {
    kitty = {
      enableGitIntegration = true;
      enable = true;
      settings = {
        transparency = "0.9";
        cursor_trail = "1";
        cursor_trail_decay = "0.075 0.175";
        cursor_trail_start_threshold = "0";
        #background_opacity = "1";
        disable_ligatures = "never";
        hide_window_decorations = "no";

        #foreground = "#c5c9c5";
        #ackground = "#181616";

        #selection_foreground = "#c8c093";
        #selection_background = "#2d4f67";

        #cursor = "#c8c093";

        #url_color = "#72a7bc";

        #active_tab_foreground = "#c8c093";
        #active_tab_background = "#12120f";
        #inactive_tab_foreground = "#a6a69c";
        #inactive_tab_background = "#12120f";
        #color0 = "#0d0c0c";
        #color8 = "#a6a69c";

        #color1 = "#c4746e";
        #color9 = "#e46876";

        #color2 = "#8a9a7b";
        #color10 = "#87a987";

        #color3 = "#c4b28a";
        #color11 = "#e6c384";

        #color4 = "#8ba4b0";
        #color12 = "#7fb4ca";

        #color5 = "#a292a3";
        #color13 = "#938aa9";

        #color6 = "#8ea4a2";
        #color14 = "#7aa89f";

        #color7 = "#c8c093";
        #color15 = "#c5c9c5";

        #color16 = "#b6927b";
        #color17 = "#b98d7b";
      };
    };
  };
}
