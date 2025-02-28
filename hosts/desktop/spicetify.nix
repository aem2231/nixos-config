{ pkgs, inputs, lib, ... }:

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in
{
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      shuffle
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
}
