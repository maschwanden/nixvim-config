{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins;
    [
      # headlines-nvim # Should load this in at the opening of filetypes that require this, namely Markdown.
    ]
    ++ [
      (pkgs.vimUtils.buildVimPlugin {
        pname = "nvim-interestingwords";
        version = "0.0.1";
        src = pkgs.fetchFromGitHub {
          owner = "Mr-LLLLL";
          repo = "interestingwords.nvim";
          rev = "fa7796353266ce9a5de6a95a8e332814f09a5514";
          hash = "sha256-Au05deUPKprlq5cnmuXtREcQF96B3t2r6f6kMS6Uo6w=";
        };
      })
    ];

  extraConfigLua = ''
    require("interestingwords").setup {
        colors = { '#aeee00', '#ff0000', '#0000ff', '#b88823', '#ffa724', '#ff2c4b' },
        search_count = true,
        navigation = false,
        scroll_center = true,
        color_key = "<leader>k",
        cancel_color_key = "<leader>K",
        select_mode = "random",  -- random or loop
    }
  '';
}
