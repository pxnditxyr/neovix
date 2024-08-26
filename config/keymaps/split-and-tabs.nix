{
  keymaps = [
    ## Splits
    {
      action = ":vsplit<Return>";
      mode = "n";
      key = "<leader>vs";
      options = {
        desc = "Split vertically";
      };
    }

    # Move in splits
    {
      action = "<C-w>h";
      mode = "n";
      key = "<C-h>";
      options = {
        desc = "Move to the left split";
      };
    }

    {
      action = "<C-w>j";
      mode = "n";
      key = "<C-j>";
      options = {
        desc = "Move to the bottom split";
      };
    }

    {
      action = "<C-w>k";
      mode = "n";
      key = "<C-k>";
      options = {
        desc = "Move to the top split";
      };
    }

    {
      action = "<C-w>l";
      mode = "n";
      key = "<C-l>";
      options = {
        desc = "Move to the right split";
      };
    }

    ## Tabs

    {
      action = ":tabnew<Return>";
      mode = "n";
      key = "<leader>tn";
      options = {
        desc = "New tab";
      };
    }

    # Move Tabs

    {
      action = ":tabnext<Return>";
      mode = "n";
      key = "<Tab>";
      options = {
        desc = "Next tab";
      };
    }

    {
      action = ":tabprevious<Return>";
      mode = "n";
      key = "<S-Tab>";
      options = {
        desc = "Previous tab";
      };
    }
  ];
}

