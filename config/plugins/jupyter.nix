{ pkgs, ... }:
{
  # Jupyter notebook workflow: edit .ipynb as `# %%` percent-cell buffers (jupytext)
  # and run cells in an IPython REPL split (iron.nvim). Minimal and terminal-native —
  # no remote-plugin manifest, no kitty graphics protocol required. Plots open in a
  # matplotlib window (the ipython startup file sets the TkAgg backend).

  plugins = {
    jupytext = {
      enable = true;

      # The pinned jupytext-nvim (2024-04-05) crashes on notebooks whose metadata
      # lacks a `kernelspec` (e.g. produced by nbconvert/papermill). Patch its
      # metadata reader to fall back to `language_info` / default to python instead
      # of indexing a nil `kernelspec`.
      package = pkgs.vimPlugins.jupytext-nvim.overrideAttrs (old: {
        postPatch = (old.postPatch or "") + ''
          substituteInPlace lua/jupytext/utils.lua \
            --replace-fail 'local metadata = vim.json.decode(io.open(filename, "r"):read "a")["metadata"]' \
              'local metadata = vim.json.decode(io.open(filename, "r"):read "a")["metadata"] or {}' \
            --replace-fail 'local language = metadata.kernelspec.language' \
              'local language = (metadata.kernelspec or {}).language or language_names[(metadata.kernelspec or {}).name] or (metadata.language_info or {}).name or "python"'
        '';
      });

      settings = {
        # Represent notebooks as `# %%` percent-format Python buffers.
        style = "percent";
        output_extension = "auto";
        # Force a concrete `py:percent` conversion for python notebooks. Without this
        # the plugin passes `--to auto:percent` to the jupytext CLI, which fails on
        # notebooks whose metadata can't disambiguate the extension (no kernelspec).
        custom_language_formatting = {
          python = {
            extension = "py";
            style = "percent";
          };
        };
      };
    };

    # Send `# %%` cells / lines / selections to an IPython REPL in a vertical split.
    # Requires `ipython` on PATH (provided by the scientific env / project devshell).
    iron = {
      enable = true;
      settings = {
        config = {
          scratch_repl = true;
          repl_definition = {
            python = {
              command = [
                "ipython"
                "--no-autoindent"
              ];
              format.__raw = "require('iron.fts.common').bracketed_paste_python";
              # `# %%` cell markers delimit a block for send_code_block.
              block_dividers = [
                "# %%"
                "#%%"
              ];
            };
          };
          repl_open_cmd.__raw = ''require("iron.view").split.vertical.botright(0.4)'';
        };
        keymaps = {
          toggle_repl = "<leader>ss"; # open/close the REPL split
          send_code_block_and_move = "<leader>sc"; # send current `# %%` cell, advance
          send_code_block = "<leader>sb"; # send current cell, stay
          visual_send = "<leader>sc"; # send visual selection
          send_line = "<leader>sl";
          send_file = "<leader>sf";
          send_paragraph = "<leader>sp";
          send_until_cursor = "<leader>su";
          interrupt = "<leader>si";
          exit = "<leader>sq";
          clear = "<leader>sx";
          restart_repl = "<leader>sR";
        };
        highlight.italic = true;
        ignore_blank_lines = true;
      };
    };
  };

  # Extra Jupyter-style shortcut: <C-CR> mirrors <leader>sc (run current `# %%`
  # cell and advance). iron only allows one key per action, so this additional
  # binding lives here rather than in iron's own keymaps. (Ctrl+Enter needs a
  # terminal that emits a distinct code for it, e.g. kitty.)
  keymaps = [
    {
      mode = "n";
      key = "<C-CR>";
      action.__raw = ''function() require("iron.core").send_code_block(true) end'';
      options.desc = "Run current cell and advance";
    }
  ];
}
