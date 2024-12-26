{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      ts_ls.enable = true;
      pyright.enable = true;
      yamlls.enable = true;
      prismals = {
        enable = true;
        package = null;
      };
      tailwindcss.enable = true;
      htmx.enable = true;
      emmet_ls = {
        enable = true;
        autostart = false;
      };
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

  extraPlugins = with pkgs.vimPlugins; [
    nvim-lspconfig
  ];

  keymaps = [
    {
      action = "<cmd>LspRestart<Return>";
      key = "<leader>rl";
      mode = [ "n" ];
      options = { noremap = true; };
    }
  ];
}
