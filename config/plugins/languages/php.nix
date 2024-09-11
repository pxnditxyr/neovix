{ pkgs, ... }:
{
  extraPackages = [
    pkgs.php83
    pkgs.php83Packages.composer
  ];

  plugins.lsp.servers.phpactor = {
    enable = true;
    package = pkgs.lsp-phpactor-laravel;
  };
}
