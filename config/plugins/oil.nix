{
  plugins.oil.enable = true;
  keymaps = [
    {
      mode = "n";
      key  = "<leader>o";
      options.desc = "Oil";
      action = "<cmd>Oil<cr>";
    }
  ];
}
