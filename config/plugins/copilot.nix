{ lib, config, ... }:
let
  cfg = config.plugins.copilot;
in
{
  plugins = {
    copilot-lua = {
      settings = {
        filetypes = {
          markdown = true;
          javascript = true;
          go = true;
          python = true;
          "*" = true; # enable for all filetypes
        };
        suggestion = {
          enabled = true;
          auto_trigger = true;
        };
      };
    };
  };
}
