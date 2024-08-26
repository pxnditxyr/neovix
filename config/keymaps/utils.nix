{
  keymaps = [
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
  ];
}
