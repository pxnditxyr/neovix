{ pkgs, ... }:
{
  plugins = {
    ts-autotag = {
      enable = true;
      settings = {
        opts = {
          enable_close = true;
          enable_close_on_slash = true;
          enable_rename = true;
        };
      };
    };

    ts-context-commentstring = {
      enable = true;
    };

    rainbow-delimiters = {
      enable = true;

      highlight = [
        "RainbowDelimiterRed"
        "RainbowDelimiterYellow"
        "RainbowDelimiterBlue"
        "RainbowDelimiterOrange"
        "RainbowDelimiterGreen"
        "RainbowDelimiterViolet"
        "RainbowDelimiterCyan"
      ];
    };

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

  extraConfigLua = ''
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterRed', { fg = '#ff2442' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterYellow', { fg = '#73ff00' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterBlue', { fg = '#00ff9d' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterOrange', { fg = '#e28400' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterGreen', { fg = '#F6FB7A' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterViolet', { fg = '#bbff00' } )
    vim.api.nvim_set_hl( 0, 'RainbowDelimiterCyan', { fg = '#ff00ff' } )

    vim.filetype.add({
      extension = {
        mdx = "markdown"
      }
    })

    vim.treesitter.language.register("markdown", "mdx")
  '';
}
