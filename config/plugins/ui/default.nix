{
  imports = [
    ./icons.nix
    ./lualine.nix
    ./tokyonight.nix
  ];

  plugins = {
    nvim-colorizer.enable = true;
  };
}
