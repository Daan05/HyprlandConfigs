selected=$(tmux ls | rofi -dmenu -p "tmux sessions")

kitty -- bash -c "tmux a -t ${selected%%:*}" &
#alacritty -e bash -c "tmux a -t ${selected%%:*}" &
#ghostty -e "tmux a -t ${selected%%:*}; bash" &

echo $selected
