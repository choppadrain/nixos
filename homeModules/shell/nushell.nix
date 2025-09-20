{...}: {
  programs = {
    nushell = {
      enable = true;
      extraConfig = ''
             let carapace_completer = {|spans|
        carapace $spans.0 nushell ...$spans | from json
        }
         $env.config = {
        show_banner: false,
        }
      '';
      shellAliases = {
        yz = "yazi";
        c = "clear";
      };
    };
    carapace.enable = true;
    carapace.enableNushellIntegration = true;
  };
}
