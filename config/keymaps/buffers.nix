{
  keymaps = [
    ## Move between buffers
    {
      action = ":bnext<Return>";
      mode = "n";
      key = "<leader>bn";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":bprev<Return>";
      mode = "n";
      key = "<leader>bp";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":bfirst<Return>";
      mode = "n";
      key = "<leader>bf";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":blast<Return>";
      mode = "n";
      key = "<leader>bl";
      options = {
        desc = "Move between buffers";
      };
    }
  ];
}
