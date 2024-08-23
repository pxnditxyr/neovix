{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      view_options = {
        show_hidden = true;
        is_hidden_file = ''
          function( name, bufnr )
            return vim.startswith( name, "." )
          end
        '';
        is_always_hidden = ''
          function( name, bufnr )
            local names = {
              ".git",
              "node_modules",
              "__pycache__",
              "coverage",
              "bun.lockb",
              "yarn.lock",
              "package-lock.json",
              "pnpm-lock.yaml",
              "postgres",
              "mysql",
              "sqlite",
              "mongo",
              ".direnv",
            }
            local root_path = vim.fn.getcwd()
            local files_path = vim.fn.expand( "%" )
            local new_path = ""
            if type( files_path ) == "table" then
              for _, path in ipairs( files_path ) do
                new_path = new_path .. path
              end
            else
              new_path = files_path
            end
            local new_file_path = string.sub( new_path, 7 )
            if new_file_path == root_path .. '/' then
              return vim.tbl_contains( names, name )
            end
            return false
          end
        '';
        sort = [
          [ "type" "asc" ]
          [ "name" "asc" ]
        ];
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key  = "<leader>o";
      options.desc = "Oil";
      action = "<cmd>Oil<cr>";
    }
  ];
}
