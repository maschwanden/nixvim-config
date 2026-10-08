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
    ./gitsigns.nix
    ./grug-far.nix
    ./jupyter.nix
    ./lsp.nix
    ./misc.nix
    ./oil.nix
    ./session.nix
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
