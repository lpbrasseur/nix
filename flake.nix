{
  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    ...
  }:

  {
    nixosConfigurations = {
      opossum = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules # declare des options
          ./opossum # il active les options (custom + standard)
        ];
        specialArgs = {};
      };
    };
  };
}
