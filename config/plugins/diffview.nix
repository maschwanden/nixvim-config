{
  plugins.diffview = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>DiffviewOpen<CR>";
      options.desc = "Open diff view";
    }
    {
      mode = "n";
      key = "<leader>gh";
      action = "<cmd>DiffviewFileHistory %<CR>";
      options.desc = "File history";
    }
    {
      mode = "n";
      key = "<leader>gq";
      action = "<cmd>DiffviewClose<CR>";
      options.desc = "Close diff view";
    }
  ];
}
