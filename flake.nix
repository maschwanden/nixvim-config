{
  description = "Neovim configuration, declaratively written using Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    {
      nixpkgs,
      flake-parts,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem =
        {
          pkgs,
          system,
          ...
        }:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          lib = import ./lib {
            inherit pkgs;
            makeNixvimWithModule = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule;
          };

          nerdFont = pkgs.nerd-fonts.symbols-only;

          wrapWithFonts =
            nvim:
            pkgs.writeShellApplication {
              name = "nvim";
              runtimeInputs = [ pkgs.fontconfig ];
              text = ''
                if [[ "$(uname)" == "Darwin" ]]; then
                  FONT_DIR="$HOME/Library/Fonts"
                else
                  FONT_DIR="''${XDG_DATA_HOME:-$HOME/.local/share}/fonts"
                fi
                MARKER="$FONT_DIR/.nixvim-nerd-fonts-installed"

                if [ ! -f "$MARKER" ]; then
                  echo "nixvim: Installing Nerd Fonts symbols to $FONT_DIR..."
                  mkdir -p "$FONT_DIR"
                  cp -r ${nerdFont}/share/fonts/. "$FONT_DIR/"
                  fc-cache -f "$FONT_DIR"
                  touch "$MARKER"
                  echo "nixvim: Done! Set your terminal's font to 'Symbols Nerd Font' (or enable fallback fonts) for icons."
                fi

                exec ${nvim}/bin/nvim "$@"
              '';
            };

          nixvimMinimal = lib.mkNixvim {
            copilot = false;
          };
          nixvimDefault = lib.mkNixvim {
            copilot = true;
          };
        in
        {
          packages = {
            default = wrapWithFonts nixvimDefault;
            minimal = wrapWithFonts nixvimMinimal;
          };

          legacyPackages.lib = {
            mkNixvim = lib.mkNixvim;
          };
        };
    };
}
