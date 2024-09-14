{
  plugins.bufferline = {
    enable = true;
    settings = {
      highlights = {
        background = {
          fg = "#e0e0e0";
          bg = "#606060";
        };
        buffer_visible = {
          fg = "#404040";
          bg = "#e0e0e0";
        };
        buffer_selected = {
          fg = "#000000";
          bg = "#f3f3f3";
        };

        numbers = {
          fg = "#e0e0e0";
          bg = "#606060";
        };
        numbers_visible = {
          fg = "#404040";
          bg = "#e0e0e0";
        };
        numbers_selected = {
          fg = "#000000";
          bg = "#f3f3f3";
        };

        separator = {
          fg = "#000000";
          bg = "#606060";
        };
        separator_visible = {
          fg = "#000000";
          bg = "#e0e0e0";
        };
        separator_selected = {
          fg = "#000000";
          bg = "#f3f3f3";
        };

        modified = {
          fg = "#ff0000";
          bg = "#606060";
        };
        modified_visible = {
          fg = "#ff0000";
          bg = "#e0e0e0";
        };
        modified_selected = {
          fg = "#ff0000";
          bg = "#f3f3f3";
        };

        fill = {
          bg = "#000000";
        };
      };
      options = {
        themable = true;
        diagnostics = "nvim_lsp";
        separator_style = "slant";

        mode = "tabs";

        always_show_bufferline = false;

        show_close_icon = false;
        show_buffer_close_icons = false;
        show_buffer_icons = true;
        show_tab_indicators = false;
        numbers = "buffer_id";

        color_icons = true;

        hover = {
          enabled = true;
          delay = 200;
          reveal = [
            "close"
          ];
        };
        modified_icon = "📝";
        tab_size = 5;
        truncate_names = true;
      };
    };
  };
}
