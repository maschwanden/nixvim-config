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
    ./treesitter.nix
    ./telescope.nix
  ];
  extraConfigLua = "";
  colorschemes = { };
  extraPlugins = with pkgs.vimPlugins; [ ];
}
