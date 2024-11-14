selected=$(echo "Select region
Entire screen
Monitor" | rofi -dmenu -p "Screenshot")

echo $selected

if [[ $selected == "Select region" ]]; then
    hyprshot -m region -o $HOME/Pictures/Screenshots
    exit;
fi

if [[ $selected == "Entire screen" ]]; then
    hyprshot -m output -o $HOME/Pictures/Screenshots
    exit;
fi

if [[ $selected == "Monitor" ]]; then
    hyprshot -m window -o $HOME/Pictures/Screenshots
    exit;
fi
