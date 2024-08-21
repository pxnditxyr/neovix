{
  autoCmd = [
    {
      event   = [ "BufWritePre" ];
      desc    = "Strip trailing whitespace";
      command = ":%s/\\s\\+$//e";
    }
  ];
}
