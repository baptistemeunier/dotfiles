#!/bin/bash

# Specifying the icon(s) in the script
# his allows us to change its appearance conditionally
icon=""

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
    temp=$(redshift -p 2>/dev/null | grep Temp | cut -d' ' -f4)
    temp=${temp//K/}
fi

# OPTIONAL: Append ' ${temp}K' after $icon
if [[ -z $temp ]]; then
    echo "%{F#65737E} $icon Off"       # Greyed out (not running)
elif [[ $temp -ge 5000 ]]; then
    echo "%{F#8FA1B3} $icon Day"       # Blue
elif [[ $temp -ge 4000 ]]; then
    echo "%{F#EBCB8B} $icon Night"       # Yellow
else
    echo "%{F#D08770} $icon Noon"       # Orange
fi
