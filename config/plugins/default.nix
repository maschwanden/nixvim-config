{ pkgs, ... }:
{
  imports = [
    ./cmp.nix
    ./conform.nix
    ./copilot.nix
    ./extra-plugins.nix
    ./fidget.nix
    ./flash.nix
    ./keymappings.nix
    ./lsp.nix
    ./misc.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
  ];
  extraConfigLua = "";
  colorschemes = { };
  extraPlugins = with pkgs.vimPlugins; [ ];
}
