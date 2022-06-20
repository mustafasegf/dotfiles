brightness="$(sudo cat /sys/class/backlight/amdgpu_bl0/brightness)"

if [[ "$1" == "up" ]]; then 
  brightness=$(($brightness + 5))

elif [[ "$1" == "down" ]]; then
  brightness=$(($brightness - 5))
fi

echo $(($brightness)) | sudo tee  /sys/class/backlight/amdgpu_bl0/brightness
notify-send "Brightness $(whoami)" "$brightness" -i "multimedia-volume-control"
