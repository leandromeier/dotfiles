#! /bin/bash
# turn primary monitor off/on if external monitor is detected
if [[ $(swaymsg output DP-3 --raw | jq .[0].success) -eq "true" ]]; then
      #swaymsg output eDP-1 disable
      swaymsg output eDP-1 toggle
fi
