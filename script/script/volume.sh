if [[ "$1" == "up" ]]; then 
  pamixer -i 5 #to increase 5%

elif [[ "$1" == "down" ]]; then
  pamixer -d 5 #to decrease 5%
fi
vol="$(pamixer --get-volume)"
notify-send "volume $1" "$vol" -i "multimedia-volume-control"
