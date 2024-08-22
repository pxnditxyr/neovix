{
  keymaps = [
    ## Save and Quit

    {
      action       = ":w<Return>";
      key          = "<leader>w";
      mode         = "n";
      options = {
        desc = "Save File";
      };
    }

    {
      action       = ":q<Return>";
      mode         = "n";
      key          = "<leader>z";
      options = {
        desc = "Quit";
      };
    }

    ## Move Lines

    {
      action  = ":m .+1<Return>==";
      mode    = "n";
      key     = "<A-j>";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Move Line down";
      };
    }

    {
      action  = ":m .-2<Return>==";
      mode    = "n";
      key     = "<A-k>";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Move Line up";
      };
    }

    {
      action  = ":m '>+1<Return>gv=gv";
      mode    = "v";
      key     = "<A-j>";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Move Lines down";
      };
    }

    {
      action  = ":m '<-2<Return>gv=gv";
      mode    = "v";
      key     = "<A-k>";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Move Lines up";
      };
    }

    {
      action  = ":m '<-2<Return>gv=gv";
      mode    = "v";
      key     = "<A-k>";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Move Lines up";
      };
    }

    ## When searching after pressing n the cursor will be positioned in the middle of the window
    {
      action  = "nzzzv";
      mode    = "n";
      key     = "n";
      options = {
        silent  = true;
        noremap = true;
        desc    = "Center the cursor after pressing n";
      };
    }

    {
      action = "Nzzzv";
      mode = "n";
      key = "N";
      options = {
        silent = true;
        noremap = true;
        desc = "Center the cursor after pressing N";
      };
    }

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

    # Separate parenthesis
    {
      action = "a<Space><Esc>h%i<Space><Esc>l%";
      mode = "n";
      key = "<leader>par";
      options = {
        silent = true;
        noremap = true;
        desc = "Separate parenthesis";
      };
    }

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
