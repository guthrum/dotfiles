#!/bin/sh
# Taken from https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/vpn-openvpn-status/vpn-openvpn-status.sh

printf "VPN: " && (pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1 && echo down) | head -n 1
