playing_icon=""
paused_icon=""
stopped_icon=""

player_status=$(playerctl status 2>/dev/null)

if [[ $? == 0 ]]; then
  if [[ $player_status == "Paused" ]]; then
    current_icon=$paused_icon
  elif [[ $player_status == "Stopped" ]]; then
    current_icon=$stopped_icon
  else
    current_icon=$playing_icon
  fi

  echo "${current_icon}"
else
  echo "error"
fi