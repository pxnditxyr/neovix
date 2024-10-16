{ inputs, ... }:
let
  # additions = {};
    # final: _prev:
    # import ../pkgs {
    #   inherit inputs;
    #   pkgs = final;
    # };

  modifications = final: prev: {
    lsp-phpactor-laravel = prev.php.buildComposerProject ( finalAttrs: {
      pname = "phpactor";
      version = "master";
      src = inputs.lsp-phpactor-laravel;
      vendorHash = "sha256-N1EPt0VylK4FeLWb/Ss3nVxghSTTa/6rPglefLUY+04=";
    } );
  };
in
inputs.nixpkgs.lib.composeManyExtensions [
  # additions
  modifications
]
