{
  autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }

    # Make sure that relative line numbers are always set
    # Without this line, files that are directly opened with `nvim FILE` do NOT have
    # any line numbers set.
    {
      event = "BufEnter";
      pattern = "*";
      command = "set relativenumber";
    }

    # Enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en";
    }
  ];
}
