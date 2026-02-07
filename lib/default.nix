{
  pkgs,
  makeNixvimWithModule,
}: {
  mkNixvim = {copilot ? false}:
    makeNixvimWithModule {
      inherit pkgs;
      module = import ../config;
      extraSpecialArgs = {
        inherit copilot;
      };
    };
}
