{
  keymaps = [
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
  ];
}
