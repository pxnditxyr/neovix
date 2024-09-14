{
  keymaps = [
    ## Move between buffers
    {
      action = ":bnext<Return>";
      mode = "n";
      key = "bn";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":bprev<Return>";
      mode = "n";
      key = "bp";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":bfirst<Return>";
      mode = "n";
      key = "bf";
      options = {
        desc = "Move between buffers";
      };
    }
    {
      action = ":blast<Return>";
      mode = "n";
      key = "bl";
      options = {
        desc = "Move between buffers";
      };
    }
  ];
}
