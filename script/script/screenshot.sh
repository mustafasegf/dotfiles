#!/bin/bash

# options to be displayed
option0="screen"
option1="area"
option2="all"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "scrot")"
case $selected in
    $option0)
      flameshot screen -c -p ~/Pictures/screenshot;;
    $option1)
      flameshot gui -p ~/Pictures/screenshot;;
    $option2)
      flameshot full -c -p ~/myStuff/captures
esac

