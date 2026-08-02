#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "==> Setting up Coder workspace dotfiles..."

# 1. Install Nix if not installed
if ! command -v nix &> /dev/null; then
  echo "==> Nix not found. Installing Nix..."
  if command -v systemctl &> /dev/null && systemctl is-active --quiet dbus; then
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm
  else
    # Fallback to single-user installer for containerized environments without systemd
    curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
  fi
fi

# Source Nix environment
if [ -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]; then
  . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
elif [ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# 2. Install Home Manager if not installed
if ! command -v home-manager &> /dev/null; then
  echo "==> Home Manager not found. Installing Home Manager..."
  nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
  nix-channel --update
  nix-shell '<home-manager>' -A install
fi

# 3. Symlink Home Manager configuration
echo "==> Linking Home Manager configuration..."
mkdir -p "$HOME/.config/home-manager"

ln -sf "${SCRIPT_DIR}/home-manager/home.nix" "$HOME/.config/home-manager/home.nix"

HOSTNAME=$(hostname)
if [ -f "${SCRIPT_DIR}/home-manager/${HOSTNAME}.nix" ]; then
  ln -sf "${SCRIPT_DIR}/home-manager/${HOSTNAME}.nix" "${SCRIPT_DIR}/home-manager/cfg.nix"
else
  echo "==> Defaulting host configuration to coder.nix"
  ln -sf "${SCRIPT_DIR}/home-manager/coder.nix" "${SCRIPT_DIR}/home-manager/cfg.nix"
fi

# 4. Apply Home Manager configuration
echo "==> Applying Home Manager configuration..."
home-manager switch

echo "==> Coder workspace dotfiles setup complete!"
