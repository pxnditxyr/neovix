{
  plugins.lsp = {
    enable = true;
    servers.nixd.enable = true;
    keymaps.lspBuf = {
      K = "hover";
      gD = "references";
      gd = "definition";
      gi = "implementation";
      gt = "type_definition";
    };
  };
}
