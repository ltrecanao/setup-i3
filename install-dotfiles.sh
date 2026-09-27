#!/bin/bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$SCRIPT_DIR/dotfiles"

echo "Instalando dotfiles desde $DOTFILES_DIR..."

# i3
mkdir -p ~/.config/i3
cp "$DOTFILES_DIR/i3/config" ~/.config/i3/config
echo "  ✓ i3/config"

# Polybar
mkdir -p ~/.config/polybar
cp "$DOTFILES_DIR/polybar/config.ini" ~/.config/polybar/config.ini
cp "$DOTFILES_DIR/polybar/launch.sh" ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/launch.sh
echo "  ✓ polybar/config.ini + launch.sh"

# Alacritty
mkdir -p ~/.config/alacritty
cp "$DOTFILES_DIR/alacritty/alacritty.toml" ~/.config/alacritty/alacritty.toml
echo "  ✓ alacritty/alacritty.toml"

# Picom
mkdir -p ~/.config/picom
cp "$DOTFILES_DIR/picom/picom.conf" ~/.config/picom/picom.conf
echo "  ✓ picom/picom.conf"

# Dunst
mkdir -p ~/.config/dunst
cp "$DOTFILES_DIR/dunst/dunstrc" ~/.config/dunst/dunstrc
echo "  ✓ dunst/dunstrc"

# Rofi
mkdir -p ~/.config/rofi
cp "$DOTFILES_DIR/rofi/config.rasi" ~/.config/rofi/config.rasi
echo "  ✓ rofi/config.rasi"

# Ranger
mkdir -p ~/.config/ranger
cp "$DOTFILES_DIR/ranger/rc.conf" ~/.config/ranger/rc.conf
echo "  ✓ ranger/rc.conf"

# .xprofile
cp "$DOTFILES_DIR/.xprofile" ~/.xprofile
echo "  ✓ .xprofile"

# .xinitrc
echo "exec i3" > ~/.xinitrc
echo "  ✓ .xinitrc"

echo ""
echo "Dotfiles instalados. Ejecutá startx para iniciar la sesión."
