{ lib, ... }:
{
  plugins.fidget = {
    enable = true;
    settings = {
      logger = {
        level = "warn"; # “off”, “error”, “warn”, “info”, “debug”, “trace”
        float_precision = 0.01; # Limit the number of decimals displayed for floats
      };
    };
  };
  keymaps = [
  ];
}
