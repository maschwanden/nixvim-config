{self, ...}: {
  keymaps = [
    ###########
    # Telescope
    ###########

    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>ts";
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>tf";
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>tc";
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>th";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>tb";
    }
    {
      action = "<cmd>Telescope colorscheme<CR>";
      key = "<leader>ch";
    }
  ];
}
