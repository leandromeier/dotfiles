#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar rawpoly &

for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar --reload rawpoly &
done

#just an empty line
