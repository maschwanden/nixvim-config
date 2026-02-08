{
  description = "Neovim configuration, declaratively written using Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {
    nixpkgs,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem = {
        pkgs,
        system,
        ...
      }: let
        pkgs = nixpkgs.legacyPackages.${system};
        lib = import ./lib {
          inherit pkgs;
          makeNixvimWithModule = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule;
        };

        nixvimMinimal = lib.mkNixvim {
          copilot = false;
        };
        nixvimDefault = lib.mkNixvim {
          copilot = true;
        };
      in {
        packages = {
          default = nixvimDefault;
          minimal = nixvimMinimal;
        };

        legacyPackages.lib = {
          mkNixvim = lib.mkNixvim;
        };
      };
    };
}
