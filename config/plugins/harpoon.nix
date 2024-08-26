{
  plugins.harpoon = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>mm";
      action = ":lua require('harpoon.ui').toggle_quick_menu()<CR>";
      options = {
        silent = true;
        desc = "Mark Menu";
      };
    }

    {
      mode = "n";
      key = "<leader>ma";
      action = ":lua require('harpoon.mark').add_file()<CR>";
      options = {
        silent = true;
        desc = "Mark File";
      };
    }
    {
      mode = "n";
      key = "<leader>mn";
      action = ":lua require('harpoon.ui').nav_next()<CR>";
      options = {
        silent = true;
        desc = "Next Mark";
      };
    }
    {
      mode = "n";
      key = "<leader>me";
      action = ":lua require('harpoon.ui').nav_prev()<CR>";
      options = {
        silent = true;
        desc = "Prev Mark";
      };
    }
  ];
}
