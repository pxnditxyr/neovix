{ pkgs, ... }:
{

  plugins.telescope = {
    enable = true;
    settings.defaults = {
      layout_strategy = "vertical";
      layout_config = {
        preview_cutoff = 20;
        mirror = true;
        prompt_position = "top";
      };
      prompt_prefix = "🔍 ";
      selection_caret = "👉🏻";
    };
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Telescope find files";
        };
      };

      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Telescope find files";
        };
      };
    };
  };

  extraPackages = [
    pkgs.fd
    pkgs.ripgrep
  ];
}
