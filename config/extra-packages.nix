{pkgs, ...}: {
  extraPackages = [
    pkgs.isort
    pkgs.gofumpt
    pkgs.goimports-reviser
    pkgs.gotools
    pkgs.prettierd
    pkgs.jq
    pkgs.rustfmt
    pkgs.nodePackages_latest.nodejs
  ];
}
