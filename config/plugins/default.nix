{
  imports = [
    # ./copilot.nix
    ./cmp
    ./gitsigns.nix
    ./kulala.nix
    ./languages
    ./lsp
    ./luasnip.nix
    ./markview.nix
    ./neogit.nix
    ./node-info.nix
    ./oil.nix
    ./supermaven.nix
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
