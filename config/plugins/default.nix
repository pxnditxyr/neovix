{
  imports = [
    ./cmp
    ./copilot.nix
    ./gitsigns.nix
    ./kulala.nix
    ./lsp
    ./luasnip.nix
    ./markview.nix
    ./neogit.nix
    ./oil.nix
    ./telescope
    ./todo-comments.nix
    ./treesitter.nix
    ./ui
    ./ultimate-autopairs.nix
    ./vim-visual-multi.nix
  ];

  plugins = {
    surround.enable = true;
  };
}
