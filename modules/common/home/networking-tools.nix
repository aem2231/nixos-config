{ config, pkgs, ... }:

{
  # Install networking tools for the user
  home.packages = with pkgs; [
    # Install useful network utilities for the user
    wget
    curl
    masscan
    netcat-gnu
    kismet
    aircrack-ng
    tshark
    wirelesstools
    tcpdump
    nmap     # Network scanner
    ethtool  # Network device management
    openvpn  # VPN client (optional)
  ];
}
