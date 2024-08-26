{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight = {
          enable = true;
          additional_vim_regex_highlighting = true;
        };
      };
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
    };
    treesitter-context.enable = true;
    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        keymaps = {
          "af" = "@function.outer";
          "if" = "@function.inner";
        };
      };
    };
  };
}
