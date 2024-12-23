#!/bin/bash

# Define the Waybar configuration directory
config_dir="$HOME/.config/waybar"  # Replace with the correct path if necessary

# Function to restart Waybar
restart_waybar() {
    echo "Changes detected, restarting Waybar..."
    python $config_dir/style_make_template.py
    # Kill the Waybar process
    # pkill waybar
    
    pkill waybar || true && hyprctl dispatch exec waybar
}

# Monitor changes in the configuration directory
inotifywait -m -r -e modify,create,delete "$config_dir" | while read path _ file; do
    # When any changes are detected, restart Waybar
    if [ "$file" != "style.css" ]; then restart_waybar; fi
done
