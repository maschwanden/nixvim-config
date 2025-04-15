{
  plugins.lsp = {
    enable = true;
    servers = {
      # Average webdev LSPs
      ts_ls.enable = true; # TS/JS
      cssls.enable = true; # CSS
      tailwindcss.enable = true; # TailwindCSS
      html.enable = true; # HTML
      astro.enable = true; # AstroJS
      phpactor.enable = true; # PHP
      pyright.enable = true; # Python
      marksman.enable = true; # Markdown
      nil_ls.enable = true; # Nix
      dockerls.enable = true; # Docker
      bashls.enable = true; # Bash
      clangd.enable = true; # C/C++
      csharp_ls.enable = true; # C#
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
