{ config, pkgs, ... }:

{
  home.username = "timothyarmstrong";
  home.homeDirectory = "/Users/tim";

  customizations.git.signingKey = null;
}
