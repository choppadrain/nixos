{lib, config, ...}: {

   options = {
     nvfconf.enable = lib.mkEnableOption "enable nvf";
  };

  config = lib.mkIf config.nvfconf.enable {
    programs.nvf = {
      enable = true;
      settings = {
	vim = {
          lsp.enable = true;
          theme = {
            enable = true;
	    name = "nord";
	    style = "dark";
	    transparent = true;
	  };

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

          autopairs.nvim-autopairs = {
            enable = true;

          };

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


