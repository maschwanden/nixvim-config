{
  keymaps = [
    # Basic mappings: "hjkl movements", insert, search, ...
    {
      mode = ["n" "v"];
      key = "n";
      action = "gj";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "e";
      action = "gk";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "m";
      action = "h";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "i";
      action = "l";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "k";
      action = "n";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "K";
      action = "N";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "h";
      action = "i";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "H";
      action = "I";
      options = {remap = false;};
    }

    # Change windows with correct homerow
    {
      mode = ["n"];
      key = "<C-w>m";
      action = "<C-w>h";
      options = {
        remap = false;
        desc = "Go to the left window";
      };
    }
    {
      mode = ["n"];
      key = "<C-w>n";
      action = "<C-w>j";
      options = {
        remap = false;
        desc = "Go to the down window";
      };
    }
    {
      mode = ["n"];
      key = "<C-w>e";
      action = "<C-w>k";
      options = {
        remap = false;
        desc = "Go to the up window";
      };
    }
    {
      mode = ["n"];
      key = "<C-w>i";
      action = "<C-w>l";
      options = {
        remap = false;
        desc = "Go to the right window";
      };
    }
    {
      mode = ["n"];
      key = "<C-w>h";
      action = "<Nop>";
    }
    {
      mode = ["n"];
      key = "<C-w>j";
      action = "<Nop>";
    }
    {
      mode = ["n"];
      key = "<C-w>k";
      action = "<Nop>";
    }
    {
      mode = ["n"];
      key = "<C-w>l";
      action = "<Nop>";
    }

    # misc
    {
      mode = ["n" "v"];
      key = "gl";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      options = {
        desc = "Open diagnostic in a floating window";
        silent = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<C-n>";
      action = "<C-d>";
      options = {remap = false;};
    }
    {
      mode = ["n" "v"];
      key = "<C-e>";
      action = "<C-u>";
      options = {remap = false;};
    }
    # Replace word under cursor and all other occurrences of the word
    {
      mode = ["n"];
      key = "<leader>r";
      action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
      options = {remap = false;};
    }
    # Jump to the last opened/focused file
    {
      mode = ["n"];
      key = ",,";
      action = "<c-^>";
      options = {remap = false;};
    }
    # Make "mark" accesible (since "m" is already used as a homerow key)
    {
      mode = ["n"];
      key = "j";
      action = "m";
      options = {remap = false;};
    }
    # Assign "jump to next line in jumplist" to <C-i>
    {
      mode = ["n"];
      key = "<C-i>";
      action = "<C-I>";
      options = {remap = false;};
    }

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
  ];
}
