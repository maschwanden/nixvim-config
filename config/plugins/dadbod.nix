{
  plugins.vim-dadbod = {
    enable = true;
  };

  plugins.vim-dadbod-ui = {
    enable = true;
  };

  plugins.vim-dadbod-completion = {
    enable = true;
  };

  # Only enable dadbod completion inside DBUI buffers, not on any SQL file.
  # Prevents connection errors when opening SQL files without a running database.
  globals.vim_dadbod_completion_force_outside_of_dbui = 0;

  keymaps = [
    {
      action = "<cmd>DBUI<CR>";
      key = "<leader>d";
    }
  ];
}
