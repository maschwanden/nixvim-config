{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymappings.nix
    ./plugins
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      no_bold = false;
      no_italic = false;
      no_underline = false;
      transparent_background = true;
      integrations = {
        cmp = true;
        noice = true;
        notify = true;
        neotree = true;
        harpoon = true;
        gitsigns = true;
        which_key = true;
        illuminate.enabled = true;
        treesitter = true;
        treesitter_context = true;
        telescope.enabled = true;
        indent_blankline.enabled = true;
        mini.enabled = true;
        native_lsp = {
          enabled = true;
          inlay_hints = {
            background = true;
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            information = ["underline"];
            warnings = ["underline"];
          };
        };
      };
    };
  };
}
