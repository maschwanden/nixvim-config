{
  lib,
  copilot ? false,
  colorscheme ? "catppuccin-macchiato",
  ...
}:
{
  # Import all your configuration modules here
  imports = [
    ./autocommands.nix
    ./keymappings.nix
    ./options.nix
    ./plugins
  ];

  plugins = lib.mkIf copilot {
    copilot-chat.enable = true;
    copilot-cmp.enable = true;
    copilot-lua.enable = true;
  };

  colorschemes.base16 = {
    enable = true;
    inherit colorscheme;
  };
}
