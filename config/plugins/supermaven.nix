{ pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.supermaven-nvim
  ];

  extraConfigLua = ''
  require( "supermaven-nvim" ).setup({
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-j>",
    },
    ignore_filetypes = {},
    color = {
      suggestion_color = "#ffffff",
      cterm = 244,
    },
    log_level = "info",
    disable_inline_completion = false,
    disable_keymaps = false,
    condition = function()
      return false
    end
  })
  '';
}
