{ pkgs, ... }:
{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics<cr>";
      options = {
        desc = "Delete buffer";
      };
    }
  ];
}
