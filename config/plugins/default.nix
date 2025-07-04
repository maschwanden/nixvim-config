{pkgs, ...}: {
  imports = [
    ./cmp.nix
    ./copilot.nix
    ./keymappings.nix
    ./treesitter.nix
    ./telescope.nix
    ./lsp.nix
  ];

  plugins = {
    web-devicons = {
      enable = true;
    };
  };

  extraConfigLua = "";
  colorschemes = {};
  extraPlugins = with pkgs.vimPlugins; [];
}
