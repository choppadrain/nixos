{
  config.vim = {
    viAlias = true;
    vimAlias = true;
    options = {
      autoindent = false;
      tabstop = 4;
      shiftwidth = 4;
    };
    diagnostics = {
      enable = true;
      config = {
        underline = true;
        signs = true;
        virtual_text = true;
        update_in_insert = false;
      };
    };

    theme = {
      name = "catppuccin";
      style = "mocha";
      enable = true;
    };
    visuals = {
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      highlight-undo.enable = true;
    };
  };
}
