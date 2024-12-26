{
  imports = [
    ./borders.nix
    ./bufferline.nix
    ./icons.nix
    ./lualine.nix
    ./notifications.nix
    ./tokyonight.nix
  ];

  plugins = {
    colorizer.enable = true;
  };
}
