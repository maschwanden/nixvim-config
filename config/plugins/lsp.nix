{
  plugins.lsp = {
    enable = true;
    servers = {
      html.enable = true; # HTML
      ts_ls.enable = true; # TypeScript / JavaScript
      cssls.enable = true; # CSS / SCSS / LESS
      angularls.enable = true; # Angular
      eslint.enable = true; # JS / TS linting
      emmet_ls.enable = true; # HTML / CSS abbreviation expansion
      pyright.enable = true; # Python
      marksman.enable = true; # Markdown
      nil_ls.enable = true; # Nix
      dockerls.enable = true; # Docker
      bashls.enable = true; # Bash
      clangd.enable = true; # C/C++
      yamlls.enable = true; # YAML
      gopls = {
        enable = true;
        package = null; # Use gopls from $PATH (e.g. devshell) instead of a fixed nixpkgs version
      };

      lua_ls = {
        # Lua
        enable = true;
        settings.telemetry.enable = false;
      };

      # Rust
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
    };

    keymaps = {
      silent = true;
      diagnostic = {
        # Navigate in diagnostics
        "<leader>l[" = "goto_prev";
        "<leader>l]" = "goto_next";
        # TODO: fix theme of float
        "<leader>lH" = "open_float";
      };

      lspBuf = {
        "<F2>" = "rename";
        la = "code_action";
        ld = "definition";
        li = "implementation";
        lr = "references";
        lh = "hover";
        lt = "type_definition";
      };
    };
  };

  userCommands = {
    RustAnalyzerReload = {
      desc = "Reload the rust-analyzer workspace and rebuild proc macros";
      force = true;
      command.__raw = ''
        function()
          local clients = vim.lsp.get_clients({ name = "rust_analyzer" })
          if #clients == 0 then
            vim.notify("rust_analyzer is not attached to any buffer", vim.log.levels.WARN)
            return
          end
          for _, client in ipairs(clients) do
            client:request("rust-analyzer/reloadWorkspace", nil, function(err)
              if err then
                vim.notify("rust-analyzer: reloadWorkspace failed: " .. tostring(err.message), vim.log.levels.ERROR)
              else
                vim.notify("rust-analyzer: workspace reloaded")
              end
            end)
            client:request("rust-analyzer/rebuildProcMacros", nil, function() end)
          end
        end
      '';
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>lw";
      action = "<cmd>RustAnalyzerReload<CR>";
      options.desc = "Reload rust-analyzer workspace";
    }
    {
      mode = "n";
      key = "<leader>lR";
      action = "<cmd>LspRestart<CR>";
      options.desc = "Restart the attached LSP server(s)";
    }
  ];
}
