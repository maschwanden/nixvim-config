{pkgs, ...}: {
  imports = [
    ./cmp.nix
    ./copilot.nix
    ./keymappings.nix
    ./lsp.nix
    ./misc.nix
    ./treesitter.nix
    ./telescope.nix
  ];
  extraConfigLua = "";
  colorschemes = {};
  extraPlugins = with pkgs.vimPlugins; [];
}
