{ pkgs, inputs, ... }:
{
  extraPlugins = [
    ( pkgs.vimUtils.buildVimPlugin {
      name = "Vim Visual Multi";
      src = inputs.plugin-vim-visual-multi;
    } )
  ];

  extraConfigLua = ''
    vim.g.VM_maps = {
      [ 'Find Under' ] = "<C-n"
    }
  '';
}
