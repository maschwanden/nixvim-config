{
  plugins.copilot-cmp = {
    enable = true;
  };

  plugins.copilot-lua = {
    enable = true;
    settings = {
      filetypes = {
        markdown = true;
        javascript = true;
        go = true;
        python = true;
        "*" = true; # disable for all other filetypes and ignore default filetypes
      };

      suggestion = {
        enabled = true;
        auto_trigger = true;
      };
      panel = {
        enabled = true;
      };
    };
  };
  # extraConfigLua = ''
  #   require("copilot").setup({
  #     suggestion = { enabled = false },
  #     panel = { enabled = false },
  #   })
  # '';
}
