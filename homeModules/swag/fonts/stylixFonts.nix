# stylixFonts
{ pkgs, inputs, lib, config, ...}:

{
  options = {
    stylixFonts.enable = lib.mkEnableOption "enable stylix fonts";
  };

  config = lib.mkIf config.stylixFonts.enable {
    stylix.fonts = {

     serif = {
         package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
         name = "SFProDisplay Nerd Font";
     };

     sansSerif = {
 	 package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd;
	 name = "SFProDisplay Nerd Font"; 
     };

     monospace = {
         package = inputs.apple-fonts.packages.${pkgs.system}.sf-mono-nerd;
         name = "SF Mono Nerd Font";
     };

     emoji = {
         package = inputs.apple-emoji-linux.packages.${pkgs.system}.apple-emoji-linux;
	 name = "Apple Color Emoji";
       };
     };
   }; 

}
