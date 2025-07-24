#todo:
#finish hellwal
{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      general = {
        gaps_in = "12";
        gaps_out = "15";
        border_size = "3";

        layout = "master";
        col.active_border = "rgb(%%color2%%)";
        col.inactive_border = "rgb(%%background%%)";
      };

      decoration = {
        rounding = "4";

        active_opacity = "1.0";
        inactive_opacity = "0.9";

        shadow = {
          enabled = true;
          range = "15";
          render_power = "3";
          color = "rgb(%%background alpha=0.9 %%)";
        };

        blur = {
          enabled = true;
          size = "8";
          passes = "3";
          xray = true;
          vibrancy = "0.05";
        };
      };

      animations = {
        enabled = true;
      };

      exec-once = [
        "systemctl --user start hyprpolkitagent"
        "swaynotificationcenter"
        "waybar"
        "hyprctl setcursor BibataModernIce 24"
      ];

      "$mod" = "SUPER";
      bind = [
        # summoning apps
        "$mod, return, exec, kitty"
        "$mod, tab, exec, kitty -e yazi"

        # judging apps
        "$mod, Q, killactive,"
        "$mod, M, exit"
        "$mod, F, togglefloating"

        # dvindle
        "$mod, e, togglesplit"
        "$mod, p, pseudo"

        #move focus
        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"

        #switch workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        #move windows
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, L, movewindow, r"

        #special workspace

        "$mod, S, togglespecialworkspace, magic"
        "$mod SHIFT, S, movetoworkspace, special:magic"

        #moveactiveto
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        #mouse
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"

        #etc
        ", Print, exec, grim -g \"$(slurp -d)\" - | wl-copy"
      ];

      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      bindl = [
        # Requires playerctl
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];

      input = {
        kb_layout = "us, ru";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = "1";
        sensvity = "0";
        accel_profile = "flat";
      };
      workspace = [
        "windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      #hellwal
      "$background" = "rgb(%%background%%)";
      "$foreground" = "rgb(%%foreground%%)";
      "$color0" = "rgb(%%color0%%)";
      "$color1" = "rgb(%%color1%%)";
      "$color2" = "rgb(%%color2%%)";
      "$color3" = "rgb(%%color3%%)";
      "$color4" = "rgb(%%color4%%)";
      "$color5" = "rgb(%%color5%%)";
      "$color6" = "rgb(%%color6%%)";
      "$color7" = "rgb(%%color7%%)";
      "$color8" = "rgb(%%color8%%)";
      "$color9" = "rgb(%%color9%%)";
      "$color10" = "rgb(%%color10%%)";
      "$color11" = "rgb(%%color11%%)";
      "$color12" = "rgb(%%color12%%)";
      "$color13" = "rgb(%%color13%%)";
      "$color14" = "rgb(%%color14%%)";
      "$color15" = "rgb(%%color15%%)";
    };
  };
}
