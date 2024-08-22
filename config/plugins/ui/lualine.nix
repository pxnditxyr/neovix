{ helpers, ... }:
{

  plugins.lualine = {
    enable = true;
    globalstatus = true;
    iconsEnabled = true;
    theme = "auto";
    extensions = ["quickfix"];
    # componentSeparators = {
    #   left = "";
    #   right = "";
    # };
    # sectionSeparators = {
    #   left = "";
    #   right = "";
    # };

    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = " ";
      right = " ";
    };

    sections = {
      lualine_a = [
        {
          name = "mode";
          icon = {
            icon = " ";
            color = {
              fg = "008A3D";
            };
          };
          extraConfig = {
            upper = true;
          };
        }
      ];
      lualine_b = [
        {
          name = "filename";
          extraConfig = {
            file_status = true;
            path = 1;
          };
        }
        "diff"
        "db_ui#statusline"
      ];

      lualine_c = [
        {
          name = helpers.mkRaw ''
            function ()
              return "🐼 pxndxs 😼"
            end
          '';
        }
      ];

      lualine_x = [
        "searchcount"
        "diagnostics"
        {
          name = "branch";
          icon = "";
        }
      ];

      lualine_y = ["filetype"];
      lualine_z = ["location"];
    };
  };
}
