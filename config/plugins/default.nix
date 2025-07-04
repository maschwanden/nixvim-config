{pkgs, ...}: {
  imports = [
    ./keymappings.nix
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
