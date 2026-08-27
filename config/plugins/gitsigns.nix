{
  plugins.gitsigns = {
    enable = true;
    settings = {
      # Signs are shown for unstaged changes (default base: the index).
      signcolumn = true;
      numhl = false;
      linehl = false;
      word_diff = false;
      current_line_blame = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Gitsigns toggle_signs<CR>";
      options.desc = "Toggle git signs";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>Gitsigns toggle_linehl<CR>";
      options.desc = "Toggle git line highlight";
    }
    {
      mode = "n";
      key = "<leader>gw";
      action = "<cmd>Gitsigns toggle_word_diff<CR>";
      options.desc = "Toggle git word diff";
    }
    {
      mode = "n";
      key = "<leader>gx";
      action = "<cmd>Gitsigns toggle_deleted<CR>";
      options.desc = "Toggle deleted lines";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>Gitsigns toggle_current_line_blame<CR>";
      options.desc = "Toggle inline blame";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Gitsigns preview_hunk<CR>";
      options.desc = "Preview hunk";
    }
    {
      mode = "n";
      key = "]h";
      action = "<cmd>Gitsigns next_hunk<CR>";
      options.desc = "Next hunk";
    }
    {
      mode = "n";
      key = "[h";
      action = "<cmd>Gitsigns prev_hunk<CR>";
      options.desc = "Previous hunk";
    }
  ];
}
