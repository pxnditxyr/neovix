{
  globals.mapleader = " ";

  opts = {
    # rule
    nu = true;
    rnu = true;

    # tabulation
    expandtab   = true;
    tabstop     = 2;
    shiftwidth  = 2;
    softtabstop = 2;

    # disable mouse
    mouse     = "";
    guicursor = "";

    # indent
    autoindent  = true;
    cindent     = true;
    smartindent = true;

    # wrap
    wrap = false;

    # swap files
    swapfile = false;

    # undo
    undofile = true;

    # searching
    incsearch = true;
    smartcase = true;
    hlsearch  = true;

    # scrolloff
    scrolloff = 4;

    signcolumn = "yes";

    # colors
    termguicolors = true;

    # focus
    cursorline = true;

    # spell
    spell     = true;
    spelllang = "en_us";

    splitright = true;

  };

  # clipboard
  clipboard.register = "unnamedplus";
}
