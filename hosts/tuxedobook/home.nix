{ pkgs, inputs, lib, ... }:

{
  home.username = "eris";
  home.homeDirectory = "/home/eris";

    imports = [
    ../../modules/common/home/desktop.nix
    ../../modules/common/home/development.nix
    ../../modules/common/home/fetch.nix
    ../../modules/common/home/gaming.nix
    ../../modules/common/home/git.nix
    ../../modules/common/home/misc.nix
    ../../modules/common/home/networking-tools.nix
    ../../modules/common/home/steam.nix
    ../../modules/common/home/utils.nix
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs.spicetify =
  let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in
  {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      shuffle # shuffle+ (special characters are sanitized out of extension names)
    ];
    enabledCustomApps = with spicePkgs.apps; [
      newReleases
      ncsVisualizer
    ];
    enabledSnippets = with spicePkgs.snippets; [
      pointer
    ];

    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
