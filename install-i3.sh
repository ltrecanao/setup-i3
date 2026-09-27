#!/bin/bash

set -Eeuo pipefail

if [ "$EUID" -eq 0 ]; then
  echo "No corras este script como root."
  exit 1
fi

desktop_packages=(
  xserver-xorg
  xinit
  i3
  fonts-dejavu
  fonts-firacode
  fonts-font-awesome
  psmisc
  wireplumber
  pipewire-pulse
  pipewire-alsa
  network-manager
  ranger
  udisks2
  alacritty
  polybar
  rofi
  picom
  feh
  dunst
  libnotify-bin
  xclip
  xss-lock
)

development_packages=(
  curl
  git
  neovim
)

echo "Actualizando índices..."
sudo apt update

echo "Instalando paquetes del entorno gráfico..."
sudo apt install -y "${desktop_packages[@]}"

echo "Instalando herramientas de desarrollo..."
sudo apt install -y "${development_packages[@]}"

echo "Configurando .xinitrc..."
echo "exec i3" > "$HOME/.xinitrc"

mkdir -p "$HOME/.config/i3"

echo "Listo. Ejecuta:"
echo "startx"
