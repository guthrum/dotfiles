#!/bin/bash
# Modified from https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/vpn-openvpn-status/vpn-openvpn-status.sh

count=$(mullvad status | grep -ic "disconnected")
if [[ $count -eq 1 ]]; then
  echo "VPN: down"
else
  printf "VPN: " && (mullvad status -l | grep Location | awk -F": " '{print $2}' | cut -d '.' -f 1 || echo down)
fi
