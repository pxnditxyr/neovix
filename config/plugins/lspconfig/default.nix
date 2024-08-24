{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      tsserver.enable = true;
      pyright.enable = true;
      yamlls.enable = true;
      prismals.enable = true;
      tailwindcss.enable = true;
      intelephense.enable = true;
      emmet-ls.enable = true;
      astro.enable = true;
    };
    keymaps = {
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
      diagnostic = {
        "[d" = "goto_next";
        "]d" = "goto_prev";
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>LspRestart<Return>";
      key = "<leader>rl";
      mode = [ "n" ];
      options = { noremap = true; };
    }
  ];
}
