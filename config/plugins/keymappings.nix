{
  keymaps = [
    # { '<leader>vs', '<cmd>VenvSelect<cr>' },
    #     -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    #     { '<leader>vc', '<cmd>VenvSelectCached<cr>' },

    #########
    # Harpoon
    #########

    {
      mode = "n";
      key = "<leader>ml"; # NOTE:: (Neo)vim sees <C-m> as <CR>, so don't use <C-m> here.
      action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
    }
    {
      mode = "n";
      key = "<leader>ma";
      action.__raw = "function() require'harpoon':list():add() end";
    }
    {
      mode = "n";
      key = "<leader>mm";
      action.__raw = "function() require'harpoon':list():select(1) end";
    }
    {
      mode = "n";
      key = "<leader>mn";
      action.__raw = "function() require'harpoon':list():select(2) end";
    }
    {
      mode = "n";
      key = "<leader>me";
      action.__raw = "function() require'harpoon':list():select(3) end";
    }
    {
      mode = "n";
      key = "<leader>mi";
      action.__raw = "function() require'harpoon':list():select(4) end";
    }

    ###########
    # Telescope
    ###########

    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>ts";
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>tf";
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>tc";
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>th";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>tb";
    }
    {
      action = "<cmd>Telescope colorscheme<CR>";
      key = "<leader>ch";
    }

    ############
    # BufferLine
    ############

    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }
    {
      mode = "n";
      key = "<S-n>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-e>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    #
    # MISC
    #

    {
      action = "<cmd>Commentary<CR>";
      key = "<leader>/";
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
  ];
}
