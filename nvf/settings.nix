{
  config.vim = {
    viAlias = true;
    vimAlias = true;
    options = {
      autoindent = false;
      tabstop = 4;
      shiftwidth = 4;
    };

    theme = {
      name = "tokyonight";
      style = "night";
      enable = true;
    };
    visuals = {
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      highlight-undo.enable = true;
    };
  };
}
