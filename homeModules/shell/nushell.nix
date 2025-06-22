{...}: {
  programs = {
    nushell = {
      enable = true;
      extraConfig = ''
         let zoxide_completer = {|spans|
            $spans | skip 1 | zoxide query -l ...$in | lines | where {|x| $x != $env.PWD}
        }
        #alias completion fix

        let expanded_alias = (scope aliases | where name == $spans.0 | get -i 0 | get -i expansion)

        let spans = (if $expanded_alias != null  {
            # put the first word of the expanded alias first in the span
            $spans | skip 1 | prepend ($expanded_alias | split row " " | take 1)
        } else { $spans })

        $env.config = {
            show_banner: false
            completions: {
                case_sensetive: false
                quick: true
                partial: true
                algorithm: "fuzzy"
                external: {
                    enable: true
                }
            }
        }

      '';
      shellAliases = {
        yz = "yazi";
      };
    };
    carapace.enable = true;
    carapace.enableNushellIntegration = true;
  };
}
