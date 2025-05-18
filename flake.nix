#flake.nix
{
  description = "main flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nvf = {
       url = "github:notashelf/nvf";
       inputs.nixpkgs.follows = "nixpkgs";
    };	

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";	
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    apple-emoji-linux = {
      url = "github:samuelngs/apple-emoji-linux";
      inputs.nixpkgs.follows = "nixpkgs";


    };

  };

 outputs = {self, nixpkgs, home-manager, nvf, ...}@inputs: {
   packages."x86_64-linux".default = 
     (nvf.lib.neovimConfiguration{
        pkgs = nixpkgs.legacyPackages. "x86_64-linux";
	modules = [ ./modules/nvf/nvf.nix];
     }).neovim;

      overlays = [
          (final: prev: {
            neovim = self.packages."x86_64-linux".my-neovim;
          })
        ];



     nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
       specialArgs = { inherit inputs; };
       modules = [
         ./hosts/pc/default.nix
         home-manager.nixosModules.default
	 nvf.nixosModules.default
         {
           home-manager.useGlobalPkgs = true;
           home-manager.useUserPackages = true;
           home-manager.users.choppadrain = ./hosts/pc/home.nix;
           home-manager.extraSpecialArgs = { inherit inputs;};
         }
       ];
     };
   };
 }
