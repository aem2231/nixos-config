{ config, pkgs, inputs, ... }:

{

 programs.zsh.enable = true;

 # Enable display manager
  services.greetd = {
    enable = true;
    settings = {
     default_session.command = ''
      ${pkgs.greetd.tuigreet}/bin/tuigreet \
        --time \
        --asterisks \
        --user-menu \
        --cmd Hyprland
    '';
    };
  };

  environment.etc."greetd/environments".text = ''
    hyprland
  '';

  # Enable the hyprland compositor
  programs.hyprland.enable = true;


  # XDG Portal
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];

  #Thunar
  programs.thunar.enable = true;

  environment.systemPackages = with pkgs; [
    inputs.zen-browser.packages."${system}".twilight
    swww
    dunst
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    # Waybar
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
     })
    )
  ];


}
