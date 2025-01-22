{
  imports = [
    # ./copilot.nix
    # ./cmp
    ./blink-cmp.nix
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
    vim-surround.enable = true;
  };
}
