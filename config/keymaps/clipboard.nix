{
  keymaps = [
    ## Do not replace clipboard register when pasting
    {
      action = "\"_dP";
      mode = "n";
      key = "<leader>p";
      options = {
        desc = "Paste without replacing clipboard";
      };
    }

    # Copy all
    {
      action = ":%y<Return>";
      mode = "n";
      key = "<leader>y";
      options = {
        desc = "Copy all";
      };
    }

    # Cut all
    {
      action = ":%d<Return>";
      mode = "n";
      key = "<leader>x";
      options = {
        desc = "Cut all";
      };
    }
  ];
}
