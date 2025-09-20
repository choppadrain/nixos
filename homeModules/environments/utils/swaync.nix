{...}: {
  services.swaync = {
    enable = true;
    settings = {
      "positionX" = "right";
      "positionY" = "top";

      "timeout" = "8";
      "timeout-low" = "5";

      "widgets" = [
        "mpris"
        "volume"
        "title"
        "notifications"
        "inhibitors"
        "buttons-grid"
      ];
      "mpris" = {
        "autohide" = true;
        "loop-carousel" = true;
        "show-album-art" = "when-available";

        "volume" = {
          "label" = " ";
          "show-per-app" = true;
        };
      };
    };
  };
}
