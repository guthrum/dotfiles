#!/usr/bin/env bash

mkdir -p ~/.config/


# https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -s "${SCRIPT_DIR}/home-manager" ~/.config/home-manager
