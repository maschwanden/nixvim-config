{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters = {
        # codespell = {
        #   prepend_args = ["-L" "crate"];
        # };
      };

      formatters_by_ft = {
        "_" = ["trim_whitespace"];
        # "*" = ["codespell"];
        # Use gofmt instead of gofumpt to prevent from enforcing line length,
        # since it's getting in the way when coding Go with a 120 char limit.
        # go = ["goimports" "gofumpt"];
        go = ["goimports" "gofmt"];
        javascript = ["prettierd" "prettier"];
        json = ["jq"];
        lua = ["stylua"];
        nix = ["alejandra"];
        python = ["isort" "black"];
        rust = ["rustfmt"];
        sh = ["shfmt"];
      };

      format_on_save = ''
        function(bufnr)
          local ignore_filetypes = { "helm" }
          if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
            return
          end

          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end

          -- Disable autoformat for files in a certain path
          local bufname = vim.api.nvim_buf_get_name(bufnr)
          if bufname:match("/node_modules/") then
            return
          end
          return { timeout_ms = 1000, lsp_fallback = true }
        end
      '';
    };
  };
  keymaps = [
  ];
}
