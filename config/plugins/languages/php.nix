{ pkgs, ... }:
{
  extraPackages = [
    pkgs.php84
    pkgs.php84Packages.composer
  ];

  plugins.lsp.servers.phpactor = {
    enable = true;
    package = pkgs.lsp-phpactor-laravel;
  };
}
