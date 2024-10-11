## My nixos configuration
## Incomplete and needs more modularzing to help maintain an organized configuration whenever add more packages in the future. Will finish soon :)

### Current directory tree
``` 
└── /etc/nixos
    ├── configuration.nix
    ├── flake.lock
    ├── flake.nix
    ├── hardware-configuration.nix
    ├── home-modules
    │   ├── desktop.nix
    │   ├── development.nix
    │   ├── fetch.nix
    │   ├── gaming.nix
    │   ├── git.nix
    │   ├── misc.nix
    │   ├── networking.nix
    │   ├── notifications.nix
    │   └── utils.nix
    ├── home.nix
    └── system-modules
        ├── base.nix
        ├── base
        │   ├── bluetooth.nix
        │   ├── flatpak.nix
        │   ├── nix-stuff.nix
        │   ├── sound.nix
        │   └── system-networking.nix
        ├── bashAliases.nix
        ├── boot.nix
        ├── desktop.nix
        ├── direnv.nix
        ├── fonts.nix
        ├── locales.nix
        ├── steam.nix
        ├── users.nix
        └── utils.nix
```
Thanks to [ryan4yin](https://github.com/ryan4yin) and his amazing [nixos and flakes](https://nixos-and-flakes.thiscute.world/preface), which helped me get a grasp on many of these concepts :)
