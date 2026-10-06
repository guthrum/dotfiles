{ config, pkgs, ... }:

{
  home.username = "tim";
  home.homeDirectory = "/home/tim";

  customizations.git.signingKey = "3BAEB22F20B8A7E9";

  home.packages = [
    pkgs.antigravity-cli
    pkgs.pi-coding-agent
  ];

  home.file.".pi/agent/settings.json".source = ../pi/settings.json;
}
