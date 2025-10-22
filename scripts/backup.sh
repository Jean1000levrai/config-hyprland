#!/bin/bash

echo "Backing up existing configs..."

CONFIGS=(cava gtk-3.0 gtk-4.0 hypr kitty neofetch swaync waybar wlogout wofi btop)

for folder in hypr waybar rofi kitty; do
  if [ -d "$CONFIG_DIR/$folder" ]; then
    mv "$CONFIG_DIR/$folder" "$CONFIG_DIR/${folder}_backup_$(date +%s)"
    echo "Backed up $folder in ${folder}_backup_$(date +%s)"
  fi
done

echo "Back up Done"