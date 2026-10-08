{
  plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>t";
          group = "Telescope";
        }
        {
          __unkeyed-1 = "<leader>l";
          group = "LSP";
        }
        {
          __unkeyed-1 = "<leader>x";
          group = "Trouble";
        }
        {
          __unkeyed-1 = "<leader>z";
          group = "Folding";
        }
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
        }
        {
          __unkeyed-1 = "<leader>o";
          group = "Terminal";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Send/REPL";
        }
        {
          __unkeyed-1 = "<leader>q";
          group = "Session";
        }
        # Additional iron.nvim cell-execution chord (mirrors <leader>sc).
        {
          __unkeyed-1 = "<C-CR>";
          desc = "Run cell & advance (REPL)";
          mode = "n";
        }
      ];
    };
  };
}
