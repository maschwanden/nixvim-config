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

    #############
    # CopilotChat
    #############

    {
      key = "<leader>cc";
      action = "<CMD>CopilotChatToggle<CR>";
      options.desc = "Toggle Copilot Chat Window";
    }
    {
      key = "<leader>cs";
      action = "<CMD>CopilotChatStop<CR>";
      options.desc = "Stop current Copilot output";
    }
    {
      key = "<leader>cr";
      action = "<CMD>CopilotChatReview<CR>";
      options.desc = "Review the selected code";
    }
    {
      key = "<leader>ce";
      action = "<CMD>CopilotChatExplain<CR>";
      options.desc = "Give an explanation for the selected code";
    }
    {
      key = "<leader>cd";
      action = "<CMD>CopilotChatDocs<CR>";
      options.desc = "Add documentation for the selection";
    }
    {
      key = "<leader>cp";
      action = "<CMD>CopilotChatTests<CR>";
      options.desc = "Add tests for my code";
    }
  ];
}
