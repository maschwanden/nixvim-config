{pkgs, ...}: {
  imports = [
    ./cmp.nix
    ./fidget.nix
    ./flash.nix
    ./harpoon.nix
    ./neotree.nix
    ./lsp.nix
    ./conform.nix
    ./treesitter.nix
    ./copilot-chat.nix
    ./copilot.nix
    ./keymappings.nix
  ];

  plugins = {
    web-devicons = {
      enable = true;
    };

    diffview = {
      enable = true;
    };

    # Buffer bar
    bufferline = {
      enable = true;
    };

    # Status bar
    lualine = {
      enable = true;
    };

    # Make `nvim .` look prettier
    oil = {
      enable = true;
    };

    none-ls = {
      enable = true;
      settings = {
        cmd = ["bash -c nvim"];
        debug = true;
      };
      sources = {
        code_actions = {
          statix.enable = true;
          gitsigns.enable = true;
        };
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
          pylint.enable = true;
          checkstyle.enable = true;
        };
        formatting = {
          alejandra.enable = true;
          stylua.enable = true;
          shfmt.enable = true;
          nixpkgs_fmt.enable = true;
          gofumpt.enable = true;
          google_java_format.enable = false;
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';
          };
        };
        completion = {
          luasnip.enable = true;
        };
      };
    };

    # Persistence
    persistence.enable = true;

    # Debugger
    dap = {
      enable = true;
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };
    };
    dap-python = {
      enable = true;
    };
    dap-virtual-text = {
      enable = true;
    };
    dap-ui = {
      enable = true;
      settings = {
        floating.mappings = {
          close = ["<ESC>" "q"];
        };
      };
    };

    # Linting
    lint = {
      enable = true;
      lintersByFt = {
        text = ["vale"];
        json = ["jsonlint"];
        markdown = ["vale"];
        rst = ["vale"];
        ruby = ["ruby"];
        janet = ["janet"];
        inko = ["inko"];
        clojure = ["clj-kondo"];
        dockerfile = ["hadolint"];
      };
    };

    # Trouble
    trouble = {
      enable = true;
    };

    # Code snippets
    luasnip = {
      enable = true;
    };

    # Easily toggle comments
    commentary.enable = true;

    # Good old Telescope
    telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
        };
      };
    };

    # Todo comments
    todo-comments = {
      enable = true;
      settings = {
        colors = {
          error = ["DiagnosticError" "ErrorMsg" "#DC2626"];
          warning = ["DiagnosticWarn" "WarningMsg" "#FBBF24"];
          info = ["DiagnosticInfo" "#2563EB"];
          hint = ["DiagnosticHint" "#10B981"];
          default = ["Identifier" "#7C3AED"];
          test = ["Identifier" "#FF00FF"];
        };
      };
    };

    # Highlight word under cursor
    illuminate = {
      enable = true;
      underCursor = true;
      filetypesDenylist = [
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "reason"
      ];
    };

    # Nix expressions in Neovim
    nix = {
      enable = true;
    };

    # Dashboard
    alpha = {
      enable = true;
      theme = "startify";
    };

    lspkind = {
      enable = true;
      symbolMap = {
        Copilot = "";
      };
      extraOptions = {
        maxwidth = 50;
        ellipsis_char = "...";
      };
    };
  };
  extraConfigLua = ''
    require("telescope")

    luasnip = require("luasnip")
    kind_icons = {
      Text = "󰊄",
      Method = "",
      Function = "󰡱",
      Constructor = "",
      Field = "",
      Variable = "󱀍",
      Class = "",
      Interface = "",
      Module = "󰕳",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    }

    local cmp = require'cmp'

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
      sources = {
        { name = 'buffer' }
      }
    })

    -- Set configuration for specific filetype.
     cmp.setup.filetype('gitcommit', {
       sources = cmp.config.sources({
         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
       }, {
         { name = 'buffer' },
       })
     })

     -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline(':', {
       sources = cmp.config.sources({
         { name = 'path' }
       }, {
         { name = 'cmdline' }
       }),
     })

     require("interestingwords").setup {
        colors = { '#aeee00', '#ff0000', '#0000ff', '#b88823', '#ffa724', '#ff2c4b' },
        search_count = true,
        navigation = false,
        scroll_center = true,
        color_key = "<leader>k",
        cancel_color_key = "<leader>K",
        select_mode = "random",  -- random or loop
    }

  '';

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      no_bold = false;
      no_italic = false;
      no_underline = false;
      transparent_background = true;
      integrations = {
        cmp = true;
        noice = true;
        notify = true;
        neotree = true;
        harpoon = true;
        gitsigns = true;
        which_key = true;
        illuminate.enabled = true;
        treesitter = true;
        treesitter_context = true;
        telescope.enabled = true;
        indent_blankline.enabled = true;
        mini.enabled = true;
        native_lsp = {
          enabled = true;
          inlay_hints = {
            background = true;
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            information = ["underline"];
            warnings = ["underline"];
          };
        };
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins;
    [
      # headlines-nvim # Should load this in at the opening of filetypes that require this, namely Markdown.
    ]
    ++ [
      (pkgs.vimUtils.buildVimPlugin {
        pname = "nvim-interestingwords";
        version = "0.0.1";
        src = pkgs.fetchFromGitHub {
          owner = "Mr-LLLLL";
          repo = "interestingwords.nvim";
          rev = "fa7796353266ce9a5de6a95a8e332814f09a5514";
          hash = "sha256-Au05deUPKprlq5cnmuXtREcQF96B3t2r6f6kMS6Uo6w=";
        };
      })
    ];
}
