{
  pkgs,
  makeNixvimWithModule,
}:
{
  mkNixvim =
    { }:
    makeNixvimWithModule {
      inherit pkgs;
      module = import ../config;
    };
}
