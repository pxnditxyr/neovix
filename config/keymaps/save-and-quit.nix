{
  keymaps = [
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
  ];
}
