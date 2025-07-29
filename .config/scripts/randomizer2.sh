#!/bin/bash

WALLPAPER_DIR="$HOME/wallpaper"

# Function to pick a random wallpaper out of folder
pick_random_wallpaper() {
find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1
}

# Function to apply color scheme
apply_theme() {
local wallpaper="$1"
wal -i "$wallpaper" --saturate 0.7
echo "Color scheme applied based on $wallpaper"
}

wallpaper=$(pick_random_wallpaper)

if [[ -z "$wallpaper" ]]; then
echo "No wallpapers found in $WALLPAPER_DIR"
exit 1
fi

wallpaper=$(pick_random_wallpaper)
apply_theme "$wallpaper"

