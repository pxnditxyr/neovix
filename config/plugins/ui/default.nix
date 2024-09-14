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
    nvim-colorizer.enable = true;
  };
}
