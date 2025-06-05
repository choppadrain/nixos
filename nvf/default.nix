{...}: {
   imports = [
        ./settings.nix
        ./plugins/default.nix
        ./plugins/languages/default.nix
        ];
	programs.nvf = {
		enable = true;
	};
}
