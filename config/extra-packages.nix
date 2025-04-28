{pkgs, ...}: {
  extraPackages = with pkgs; [
    isort
    gofumpt
    goimports-reviser
    gotools
    prettierd
    jq
    rustfmt
    nodePackages_latest.nodejs
    curl
  ];
}
