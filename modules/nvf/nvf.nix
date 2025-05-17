{lib, config, pkgs}: {

  options = {
    nvf.enable = lib.mkEnableOption "enable nvf";
  };

  config = lib.mkIf config.nvf.enable {
    vim = {
     theme = {
       enable = true;
       name = "nord";
       style = "dark";
       transparent = true;
     };

     statusline.lualine.enable = true;
     telescope.enable = true;
     autocomplete.nvim-cmp.enable = true;

     languages = {
       enableLSP = true;
       enableTreesitter = true;

       nix.enable = true;
       go.enable = true;
     };
  };  
 };
}
