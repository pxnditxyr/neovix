{
  imports = [
    ./cmp
    ./copilot.nix
    ./gitsigns.nix
    ./kulala.nix
    ./lspconfig
    ./luasnip.nix
    ./markview.nix
    ./neogit.nix
    ./oil.nix
    ./telescope
    ./treesitter.nix
    ./ui
    ./ultimate-autopairs.nix
    ./vim-visual-multi.nix
  ];

  plugins = {
    surround.enable = true;
  };
}
