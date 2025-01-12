{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;

    grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;

    settings = {
      textobjects.enable = true;

      highlight = {
        enable = false;

        disable = ''
          function(lang, bufnr)
          return vim.api.nvim_buf_line_count(bufnr) > 10000
          end
        '';
      };

      incremental_selection = {enable = true;};

      indent = {enable = false;};

      # NOTE: You can set whether `nvim-treesitter` should automatically install the grammars.
      auto_install = true;
      ensure_installed = [
        "git_config"
        "git_rebase"
        "gitattributes"
        "gitcommit"
        "gitignore"
        "rust"
        "go"
      ];
    };
  };
}
