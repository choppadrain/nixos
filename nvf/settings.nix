{...}: {
  programs.nvf.settings.vim = {
        options = {
                autoindent = false;
                tabstop = 4;
                shiftwidth = 4;
                };

        theme = {
                name = "gruvbox";
                        #style = "night";
                enable = true;
                };

        luaConfigRc = ''
                vim.opt.expandtab = true;
                
                '';
        };
}
