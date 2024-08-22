{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key  = "<leader>o";
      options.desc = "Oil";
      action = "<cmd>Oil<cr>";
    }
  ];
}
