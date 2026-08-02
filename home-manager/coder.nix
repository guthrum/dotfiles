{ config, pkgs, ... }:

{
  home.username = "coder";
  home.homeDirectory = "/home/coder";

  customizations.git.signingKey = null;
}
