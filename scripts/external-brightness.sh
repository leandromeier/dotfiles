#!/bin/bash
key=$1
if [ 0 -lt $key ] && [ $key -lt 100 ]; then 
  ddcutil setvcp 10 $key
else
  echo "invalid value"
fi
