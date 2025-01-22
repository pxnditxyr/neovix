{ lib, ... }:
{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      appearance.kind_icons = {
        Class = "󰌔";
        Color = "🎨";
        Constant = "🔑";
        Constructor = "🛠️";
        Enum = "🔢";
        EnumMember = "🔸";
        Event = "📣";
        Field = "";
        File = "📄";
        Folder = "📂";
        Function = "🔨";
        Interface = "🌐";
        Keyword = "💡";
        Method = "⚙️ ";
        Module = "📦";
        Operator = "➗";
        Property = "🏠";
        Reference = "🔍";
        Snippet = "📑";
        Struct = "🛠️";
        Text = "📜";
        TypeParameter = "🔠";
        Unit = "📏";
        Value = "💎";
        Variable = "🔄";
      };
      sources = {
        default = [
          "lsp"
          "path"
          "luasnip"
          "buffer"
        ];
      };
      keymap = {
        preset = "enter";
        "<S-Tab>" = {
          __raw = ''{}'';
        };
        "<Tab>" = {
          __raw = ''{}'';
        };
      };
      snippets = {
        expand = lib.nixvim.mkRaw ''
          function(snippet)
            require('luasnip').lsp_expand(snippet)
          end
        '';
        active = lib.nixvim.mkRaw ''
          function(filter)
            if filter and filter.direction then
              return require('luasnip').jumpable(filter.direction)
            end
            return require('luasnip').in_snippet()
          end
        '';
        jump = lib.nixvim.mkRaw ''
          function(direction) require('luasnip').jump(direction) end
        '';
      };
      completion.menu = {

        border = "padded";
        draw = {
          columns = [
            {
              __unkeyed-1 = "label";
              __unkeyed-2 = "label_description";
              gap = 1;
            }
            {
              __unkeyed-1 = "kind_icon";
              __unkeyed-2 = "kind";
              gap = 1;
            }
          ];
        };
      };
    };
  };
}
