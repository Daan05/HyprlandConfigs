current=$(powerprofilesctl get)
selected=$(echo "performance
balanced
power-saver" | rofi -dmenu -p "Current powermode: $current")

powerprofilesctl set $selected
echo $selected
