{ helpers, ... }:
{
  plugins.notify.enable = true;

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>nd";
      action = helpers.mkRaw ''
        function()
          require( "notify" ).dismiss()
        end
        '';
    }
  ];

  # plugins.noice = {
  #   enable = true;
  #   presets = {
  #     bottom_search = true;
  #     command_palette = true;
  #     inc_rename = false;
  #     long_message_to_split = true;
  #     lsp_doc_border = true;
  #   };
  #   lsp.override = {
  #     "vim.lsp.util.convert_input_to_markdown_lines" = true;
  #     "vim.lsp.util.stylize_markdown" = true;
  #     "cmp.entry.get_documentation" = true;
  #   };
  # };
  #
  # keymaps = [
  #   {
  #     mode = [ "n" ];
  #     key = "nd";
  #     action = helpers.mkRaw ''
  #       function()
  #         require( "noice" ).cmd( "dismiss" )
  #       end
  #       '';
  #     options.silent = true;
  #   }
  #
  #   {
  #     mode = [ "n" ];
  #     key = "nl";
  #     action = helpers.mkRaw ''
  #       function()
  #         require( "noice" ).cmd( "last" )
  #       end
  #       '';
  #     options.silent = true;
  #   }
  # ];

}
