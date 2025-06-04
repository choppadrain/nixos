{lib, config, ...}: {

   options = {
     nvfconf.enable = lib.mkEnableOption "enable nvf";
  };

  config = lib.mkIf config.nvfconf.enable {
    programs.nvf = {    
      enable = true;
      settings = {
	vim = {

          options = {
            autoindent = false;
          };

          lsp.enable = true;
          theme = {
            name = "tokyonight";
            style = "night";
            enable = true;
	  };
                                        #done
          statusline.lualine = {
              enable = true;
          };

          telescope.enable = true;

	  autocomplete.nvim-cmp = {
              enable = true;
          };

          debugger.nvim-dap = {
            enable = true;
            ui.enable = true;
          };
                                        #done
          autopairs.nvim-autopairs = {
            enable = true;

          };
                                        #done
          languages = {
            enableTreesitter = true;
            go.enable = true;
            nix.enable = true;
          };

          utility.yazi-nvim = {
             enable = true;

          };
	};
       };
    };
  }; 
}


