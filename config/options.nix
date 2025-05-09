{
  globalOpts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";

    # Search
    ignorecase = true;
    smartcase = true;
    wrapscan = false; # Do not wrap at start/end of file.

    # Tab defaults (might get overwritten by an LSP server)
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    # System clipboard support, needs xclip/wl-clipboard
    clipboard = "unnamedplus";

    # Highlight the current line
    cursorline = true;

    # Show line and column when searching
    ruler = true;

    # Global substitution by default
    gdefault = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 5;

    # Disable swap file creation
    swapfile = false;
  };

  userCommands = {
    Q.command = "q";
    Q.bang = true;
    Wq.command = "q";
    Wq.bang = true;
    WQ.command = "q";
    WQ.bang = true;
    W.command = "q";
    W.bang = true;
  };

  globals = {
    mapleader = " ";

    # Disable useless providers
    loaded_ruby_provider = 0; # Ruby
    loaded_perl_provider = 0; # Perl
    loaded_python_provider = 0; # Python 2
  };

  # autoCmd = [
  #   {
  #     event = [ "BufEnter" "BufWinEnter" ];
  #     pattern = [ "*.md" "*.mdx" ];
  #     command = "MarkdownPreviewToggle";
  #   }
  # ];

  highlight = {
    Comment = {
      fg = "#ff00ff";
      bg = "#000000";
      underline = true;
      bold = true;
    };
  };

  withPython3 = true;
  extraPython3Packages = ps:
    with ps; [
      pynvim
      pip
      numpy
      scipy
      pandas
      matplotlib
      seaborn
      jupyter
    ];

  env = {
    GOFUMPT_SPLIT_LONG_LINES = "on";
  };

  extraConfigLua = ''
  '';
}
