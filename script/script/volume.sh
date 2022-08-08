if [[ "$1" == "up" ]]; then 
  pamixer -i 5 #to increase 5%

elif [[ "$1" == "down" ]]; then
  pamixer -d 5 #to decrease 5%

elif [[ "$1" == "mute" ]]; then
  pamixer -t #toggle mute
fi

vol="$(pamixer --get-volume)"
mute="$(pamixer --get-mute)"
icon=$([ "$mute" == "false" ] && echo "🔉" || echo "🔇")
notify-send "volume $1" "$vol% $icon" -i "multimedia-volume-control"
