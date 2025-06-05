{...}: {
  programs.nvf.settings.vim = {
    lsp = {
      enable = true;
    };

    extraConfigLua = ''
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 2,
          source = "if_many",
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    '';
  };







}
