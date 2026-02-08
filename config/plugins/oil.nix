{
  plugins.oil = {
    enable = true;

    settings = {
      delete_to_trash = true;
      skip_confirm_for_simple_edits = false;
      use_default_keymaps = false;

      keymaps = {
        "g?" = "actions.show_help";
        "<CR>" = "actions.select";
        "<BS>" = "actions.parent";
        "-" = "actions.parent";
        "_" = "actions.open_cwd";
        "`" = "actions.cd";
        "~" = "actions.tcd";
        "g." = "actions.toggle_hidden";
      };

      view_options = {
        show_hidden = true;
      };

      win_options = {
        signcolumn = "yes:2";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      action = "<cmd>Oil<CR>";
      key = "-";
    }
  ];

}
