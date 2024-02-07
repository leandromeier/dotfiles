#!/usr/bin/bash
swaybg -i $(find ~/Documents/background/. -type f | shuf -n1) -m fit &
OLD_PID=$!
while true; do
  # time is counted in seconds
    sleep 600
    swaybg -i $(find ~/Documents/background/. -type f | shuf -n1) -m fit &
    NEXT_PID=$!
    sleep 0
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done
