{pkgs, ...}: {
  imports = [
    ./keymappings.nix
    ./lsp.nix
  ];

  plugins = {};
  extraConfigLua = "";
  colorschemes = {};
  extraPlugins = with pkgs.vimPlugins; [];
}
