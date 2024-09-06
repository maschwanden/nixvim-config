{pkgs, ...}: {
  imports = [
    ./cmp.nix
    ./fidget.nix
    ./flash.nix
    ./harpoon.nix
    ./neotree.nix
  ];

  plugins = {
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

    # Includes all parsers for treesitter
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = [ "elixir" "eex" "heex" ];
        highlight.enable = true;
      };
    };

    # Auto-tagging
    ts-autotag = {
      enable = true;
    };

    # Autopairs
    nvim-autopairs = {
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
          spell.enable = true;
        };
      };
    };

    # Lazygit
    lazygit = {
      enable = true;
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
      extensions = {
        dap-python = {
          enable = true;
        };
        dap-ui = {
          enable = true;
          floating.mappings = {
            close = ["<ESC>" "q"];
          };
        };
        dap-virtual-text = {
          enable = true;
        };
      };
      configurations = {
        java = [
          {
            type = "java";
            request = "launch";
            name = "Debug (Attach) - Remote";
            hostName = "127.0.0.1";
            port = 5005;
          }
        ];
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
        terraform = ["tflint"];
      };
    };

    # Trouble
    trouble = {
      enable = true;
    };

    # Code snippets
    luasnip = {
      enable = true;
      #extraConfig = {
      #  enable_autosnippets = true;
      #  store_selection_keys = "<Tab>";
      #};
    };

    # Easily toggle comments
    commentary.enable = true;

    # Terminal inside Neovim
    toggleterm = {
      enable = true;
      settings = {
        hide_numbers = false;
        autochdir = true;
        close_on_exit = true;
        direction = "vertical";
      };
    };

    # Git signs in code
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
    };

    which-key = {
      enable = true;
      registrations = {
        "<leader>fg" = "Find Git files with telescope";
        "<leader>fw" = "Find text with telescope";
        "<leader>ff" = "Find files with telescope";
      };
    };

    # Markdown preview server
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    # Prettier fancier command window
    noice = {
      enable = true;
    };

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
      colors = {
        error = ["DiagnosticError" "ErrorMsg" "#DC2626"];
        warning = ["DiagnosticWarn" "WarningMsg" "#FBBF24"];
        info = ["DiagnosticInfo" "#2563EB"];
        hint = ["DiagnosticHint" "#10B981"];
        default = ["Identifier" "#7C3AED"];
        test = ["Identifier" "#FF00FF"];
      };
    };

    # File tree

    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    # Highlight word under cursor
    illuminate = {
      enable = true;
      underCursor = false;
      filetypesDenylist = [
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "reason"
      ];
    };

    hardtime = {
      enable = true;
      enabled = true;
      disableMouse = true;
      disabledFiletypes = [ "Oil" ];
      hint = true;
      maxCount = 4;
      maxTime = 1000;
      restrictionMode = "hint";
      restrictedKeys = {
        "m" = [ "n" "v" "x" ];
        "n" = [ "n" "v" "x" ];
        "e" = [ "n" "v" "x" ];
        "i" = [ "n" "v" "x" ];
        "-" = [ "n" "x" ];
        "+" = [ "n" "x" ];
        "<CR>" = [ "n" "x" ];
        "<C-M>" = [ "n" "x" ];
        "<C-N>" = [ "n" "x" ];
        "<C-P>" = [ "n" "x" ];
      };
    };

    # Nix expressions in Neovim
    nix = {
      enable = true;
    };

    # Language server
    lsp = {
      enable = true;
      servers = {
        # Average webdev LSPs
        tsserver.enable = true; # TS/JS
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        astro.enable = true; # AstroJS
        phpactor.enable = true; # PHP
        svelte.enable = false; # Svelte
        vuels.enable = false; # Vue
        pyright.enable = true; # Python
        marksman.enable = true; # Markdown
        nil-ls.enable = true; # Nix
        dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        clangd.enable = true; # C/C++
        csharp-ls.enable = true; # C#
        yamlls.enable = true; # YAML

        lua-ls = { # Lua
          enable = true;
          settings.telemetry.enable = false;
        };

        # Rust
        rust-analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
      };
    };

    # Dashboard
    alpha = {
      enable = true;
      theme = "dashboard";
      iconsEnabled = true;
    };

    # flash = {
    #   enable = true;
    # };

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

    schemastore = {
      enable = true;
      yaml.enable = true;
      json.enable = false;
    };


  };
  extraConfigLua = ''
    require("telescope").load_extension("lazygit")

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

     require("elixir").setup({
       nextls = {enable = false},
       elixirls = {enable = true},
       projectionist = {enable = true},
     })
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
      headlines-nvim # Should load this in at the opening of filetypes that require this, namely Markdown.
      elixir-tools-nvim
    ]
    ++ [
      (pkgs.vimUtils.buildVimPlugin {
      pname = "markview.nvim";
      version = "0.0.1";
      src = pkgs.fetchFromGitHub {
        owner = "OXY2DEV";
        repo = "markview.nvim";
        rev = "a959d77ca7e9f05175e3ee4e582db40b338c9164";
        hash = "sha256-w6yn8aNcJMLRbzaRuj3gj4x2J/20wUROLM6j39wpZek=";
      };
    })
      # (pkgs.vimUtils.buildVimPlugin {
      #   pname = "accelerated-jk";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "rainbowhxch";
      #     repo = "accelerated-jk.nvim";
      #     rev = "8fb5dad4ccc1811766cebf16b544038aeeb7806f";
      #     sha256 = "";
      #   };
      #   version = "2023-03-01";
      # })

      # Just copy this block for a new plugin
      # (pkgs.vimUtils.buildVimPlugin {
      #   pname = "";
      #   src = pkgs.fetchFromGitHub {
      #     owner = "";
      #     repo = "";
      #     rev = "";
      #     sha256 = "";
      #   };
      # })
    ];

  keymaps = [
    # Undotree
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        desc = "Undotree";
      };
    }

    # Lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }

    # Commentary bindings
    {
      action = "<cmd>Commentary<CR>";
      key = "<leader>/";
    }

    # Telescope bindings

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
      action = "<cmd>Telescope colorscheme<CR>";
      key = "<leader>ch";
    }

    # Notify bindings

    {
      mode = "n";
      key = "<leader>un";
      action = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';
      options = {
        desc = "Dismiss All Notifications";
      };
    }

    # Bufferline bindings

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
