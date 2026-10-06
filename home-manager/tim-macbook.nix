{ config, pkgs, ... }:

{
  home.username = "timothyarmstrong";
  home.homeDirectory = "/Users/tim";

  customizations.git.signingKey = null;

  home.packages = [
    pkgs.pi-coding-agent
  ];

  home.file.".pi/agent/settings.json".source = ../pi/settings.json;
}
