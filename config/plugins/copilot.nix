{
  plugins = {
    copilot-chat = {
      enable = true;
    };

    copilot-cmp = {
      enable = true;
    };

    copilot-lua = {
      enable = true;
      settings = {
        filetypes = {
          markdown = true;
          javascript = true;
          go = true;
          python = true;
          "*" = true; # enable for all filetypes
        };
        suggestion = {
          enabled = true;
          auto_trigger = true;
        };
      };
    };
  };
}
