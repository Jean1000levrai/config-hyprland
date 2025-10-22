#!/bin/bash

echo "Started linking files"

CONFIGS=(cava gtk-3.0 gtk-4.0 hypr kitty neofetch swaync waybar wlogout wofi btop)

for c in "${CONFIGS[@]}"; do
  rm -rf ~/.config/$c
  ln -s ~/rice/config/$c ~/.config/$c
done

echo "All symlinks created!"

echo "Installing fonts..."

mkdir -p ~/.local/share/fonts
ln -sf ~/rice/fonts/roboto/* ~/.local/share/fonts/
ln -sf ~/rice/fonts/fontawesome/* ~/.local/share/fonts/


fc-cache -fv
echo "Fonts installed successfully!"

