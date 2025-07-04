{pkgs, ...}: {
  plugins.lsp = {
    enable = true;
    servers = {
      html.enable = true; # HTML
      pyright.enable = true; # Python
      marksman.enable = true; # Markdown
      nil_ls.enable = true; # Nix
      dockerls.enable = true; # Docker
      bashls.enable = true; # Bash
      clangd.enable = true; # C/C++
      yamlls.enable = true; # YAML
      gopls.enable = true; # Golang

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
}
