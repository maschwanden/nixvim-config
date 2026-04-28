{ pkgs, ... }:
{
  imports = [
    ./cmp.nix
    ./conform.nix
    ./dadbod.nix
    ./diffview.nix
    ./extra-plugins.nix
    ./fidget.nix
    ./flash.nix
    ./lsp.nix
    ./misc.nix
    # ./neo-tree.nix
    ./oil.nix
    ./telescope.nix
    ./treesitter.nix
    ./toggleterm.nix
    ./trouble.nix
    ./which-key.nix
  ];
  extraConfigLua = "";
  colorschemes = { };
  extraPlugins = with pkgs.vimPlugins; [ ];
}
