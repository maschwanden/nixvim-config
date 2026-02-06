{pkgs, ...}: {
  imports = [
    ./cmp.nix
    ./conform.nix
    ./copilot.nix
    ./dadbod.nix
    ./extra-plugins.nix
    ./fidget.nix
    ./flash.nix
    ./lsp.nix
    ./misc.nix
    ./neo-tree.nix
    ./oil.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
  ];
  extraConfigLua = "";
  colorschemes = {};
  extraPlugins = with pkgs.vimPlugins; [];
}
