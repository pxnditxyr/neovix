{ helpers, ... }:
{
  plugins.lualine = {
    enable = true;
    settings = {
      extensions = [ "quickfix" ];

      options = {
        theme = "auto";
        globalstatus = true;
        iconsEnabled = true;
        componentSeparators = {
          left = "";
          right = "";
        };
        sectionSeparators = {
          left = " ";
          right = " ";
        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            icon = {
              __unkeyed-1 = " ";
              color = {
                fg = "008A3D";
              };
              upper = true;
            };
          }
        ];
        lualine_b = [
          {
            __unkeyed-1 = "filename";
            file_status = true;
            symbols = {
              modified = "📝";
              readonly = "🔒";
              unnamed = "😶";
              newfile = "🌚";
            };
            path = 1;
          }
          "diff"
          "db_ui#statusline"
        ];

        lualine_c = [
          {
            __unkeyed-1 = helpers.mkRaw ''
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
            __unkeyed-1 = "branch";
            icon = "";
          }
        ];

        lualine_y = ["filetype"];
        lualine_z = ["location"];
      };
    };
  };
}
