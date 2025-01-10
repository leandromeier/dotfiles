#! /bin/bash
# turn on primary monitor 
if [[ $(swaymsg output DP-3 --raw | jq .[0].success) -eq "true" ]]; then
      # swaymsg output eDP-1 disable
      # swaymsg output DP-3 toggle
      swaymsg output HDMI-A-2 toggle
fi
