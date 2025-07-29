#!/bin/sh
# Find a random wallpaper from /wallpaper
export DISPLAY=:0

WP=~/wallpaper

WALLPAPER=$(find $WP -type f | shuf -n1)

# Set wallpaper with feh
feh --bg-scale "$WALLPAPER"

# Apply pywal colors based on the wallpaper
wal -i "$WALLPAPER"

# debug
echo "Setting wallpaper to $WALLPAPER"

