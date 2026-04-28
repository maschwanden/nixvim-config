{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      open_mapping.__raw = "[[<C-\\>]]";
      size.__raw = ''
        function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end
      '';
      float_opts = {
        border = "rounded";
      };
      shade_terminals = true;
      shading_factor = 2;
      close_on_exit = true;
      start_in_insert = true;
      insert_mappings = true;
      terminal_mappings = true;
      persist_size = true;
      persist_mode = true;
      hide_numbers = true;
      auto_scroll = true;
    };
  };

  keymaps = [
    # Exit terminal insert mode
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Exit terminal mode";
        silent = true;
      };
    }

    # Open specific terminal directions
    {
      mode = "n";
      key = "<leader>of";
      action = "<cmd>ToggleTerm direction=float<CR>";
      options.desc = "Float terminal";
    }
    {
      mode = "n";
      key = "<leader>oh";
      action = "<cmd>ToggleTerm direction=horizontal<CR>";
      options.desc = "Horizontal terminal";
    }
    {
      mode = "n";
      key = "<leader>ov";
      action = "<cmd>ToggleTerm direction=vertical<CR>";
      options.desc = "Vertical terminal";
    }

    # Send to terminal
    {
      mode = "n";
      key = "<leader>os";
      action = "<cmd>ToggleTermSendCurrentLine<CR>";
      options.desc = "Send line to terminal";
    }
    {
      mode = "v";
      key = "<leader>os";
      action = "<cmd>ToggleTermSendVisualSelection<CR>";
      options.desc = "Send selection to terminal";
    }
  ];
}
