{
  pkgs,
  makeNixvimWithModule,
}:
{
  mkNixvim =
    {
      copilot ? false,
      colorscheme ? "catppuccin-macchiato",
    }:
    makeNixvimWithModule {
      inherit pkgs;
      module = import ../config;
      extraSpecialArgs = {
        inherit copilot colorscheme;
      };
    };
}
