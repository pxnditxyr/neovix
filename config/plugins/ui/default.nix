{
  imports = [
    ./borders.nix
    ./icons.nix
    ./lualine.nix
    ./notifications.nix
    ./tokyonight.nix
  ];

  plugins = {
    nvim-colorizer.enable = true;
  };
}
