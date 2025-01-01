{ helpers, ... }:
{
  plugins.kulala = {
    enable = true;
    settings = {
      default_env = "dev";
      defualt_view = "body";
      icons = {
        inlay = {
          done = "✅";
          error = "❌";
          loading = "⏳";
        };
        lualine = "🐼";
      };
      contenttypes = {
        "application/json" = {
          formatter = [
            "jq"
            "."
          ];
          ft = "json";
          pathresolver = {
            __raw = "require('kulala.parser.jsonpath').parse";
          };
        };
        "application/xml" = {
          formatter = [
            "xmllint"
            "--format"
            "-"
          ];
          ft = "xml";
          pathresolver = [
            "xmllint"
            "--xpath"
            "{{path}}"
            "-"
          ];
        };
        "text/html" = {
          formatter = [
            "xmllint"
            "--format"
            "--html"
            "-"
          ];
          ft = "html";
          pathresolver = [ ];
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>kr";
      action = helpers.mkRaw ''
        function() require( 'kulala' ).run() end
      '';
      options.desc = "Run kulala";
    }
    {
      mode = "n";
      key = "<leader>kn";
      action = helpers.mkRaw ''
        function() require('kulala').jump_next() end
      '';
      options.desc = "kulala jump next";
    }
    {
      mode = "n";
      key = "<leader>kp";
      action = helpers.mkRaw ''
        function() require('kulala').jump_prev() end
      '';
      options.desc = "kulala jump prev";
    }
  ];
}
