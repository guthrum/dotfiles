#!/usr/bin/env bash

mkdir -p ~/.config/home-manager


# https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -sf "${SCRIPT_DIR}/home-manager/home.nix" ~/.config/home-manager/home.nix
HOSTNAME=$(hostname)
ln -sf "${SCRIPT_DIR}/home-manager/${HOSTNAME}.nix" "${SCRIPT_DIR}/home-manager/cfg.nix"

