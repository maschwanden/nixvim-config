{
  # Session management: remembers the open buffers, window layout, cursor
  # positions and folds per working directory (and per git branch), so that
  # restarting nvim is cheap.
  plugins.persistence = {
    enable = true;
    settings = {
      # Keep one session per git branch, next to the per-directory split.
      branch = true;
      # Only save once at least one real file buffer is open.
      need = 1;
    };
  };

  globalOpts.sessionoptions = "buffers,curdir,folds,globals,help,skiprtp,tabpages,terminal,winsize,winpos";

  keymaps = [
    {
      mode = "n";
      key = "<leader>qs";
      action = "<cmd>lua require('persistence').load()<CR>";
      options.desc = "Restore session for current directory";
    }
    {
      mode = "n";
      key = "<leader>ql";
      action = "<cmd>lua require('persistence').load({ last = true })<CR>";
      options.desc = "Restore last session";
    }
    {
      mode = "n";
      key = "<leader>qf";
      action = "<cmd>lua require('persistence').select()<CR>";
      options.desc = "Pick a session to restore";
    }
    {
      mode = "n";
      key = "<leader>qw";
      action = "<cmd>lua require('persistence').save()<CR>";
      options.desc = "Save session now";
    }
    {
      mode = "n";
      key = "<leader>qd";
      action = "<cmd>lua require('persistence').stop()<CR>";
      options.desc = "Do not save the session on exit";
    }
  ];
}
