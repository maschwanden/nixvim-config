{pkgs, ...}: {
  imports = [
    ./keymappings.nix
  ];

  plugins = {};
  extraConfigLua = "";
  colorschemes = {};
  extraPlugins = with pkgs.vimPlugins; [];
}
