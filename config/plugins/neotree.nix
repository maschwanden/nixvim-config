{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
    buffers = {
      bindToCwd = true;
      followCurrentFile = {
        enabled = true;
      };
    };
    filesystem = {
      followCurrentFile = {
        enabled = true;
      };
    };
    window = {
      width = 40;
      height = 15;
      autoExpandWidth = false;
      mappings = {
        "<space>" = "none";
        "n" = "move_cursor_down";
        "e" = "move_cursor_up";
      };
    };
  };
  keymaps = [
    {
      action = "<cmd>Neotree focus<CR>";
      key = "<leader>e";
    }
  ];
}
