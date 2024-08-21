{
  imports = [
    ./copilot.nix
    ./lspconfig
    ./oil.nix
    ./treesitter.nix
    ./ui
    ./ultimate-autopairs.nix
  ];

  plugins = {
    surround.enable = true;
  };
}
