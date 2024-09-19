{
  description = "🐼 Pxndxs' configuration of Neovim powered by Nix, based on the Nixvim template 🐈";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";

    flake-parts.url = "github:hercules-ci/flake-parts";

    plugin-ultimate-autopairs = {
      url = "github:altermo/ultimate-autopair.nvim";
      flake = false;
    };
    plugin-kulala = {
      url = "github:mistweaverco/kulala.nvim";
      flake = false;
    };
    plugin-vim-visual-multi = {
      url = "github:mg979/vim-visual-multi";
      flake = false;
    };
    lsp-phpactor-laravel = {
      url = "github:adalessa/phpactor/feature/laravel-extension";
      flake = false;
    };
    plugin-supermaven = {
      url = "github:supermaven-inc/supermaven-nvim";
      flake = false;
    };
  };

  outputs =
    { nixvim, flake-parts, nixpkgs, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          # pkgs = import nixpkgs {
          #    inherit system;
          #    config.allowUnfree = true;
          # };
          nixvimLib = nixvim.lib.${ system };
          nixvim' = nixvim.legacyPackages.${ system };

          nixvimModule = {
            inherit pkgs;
            module = import ./config; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              inherit inputs;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            overlays = builtins.attrValues { default = import ./overlay { inherit inputs; }; };
            config.allowUnfree = true;
          };

          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
        };
    };
}
