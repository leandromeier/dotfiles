#!/bin/bash
key=$1
# h is passed to query current brightness
# valid options are integers between 0 and 100
#
case $key in
    h ) ddcutil getvcp 10 ;;
    ''|*[!0-9]*) echo invalid value ;;
    *)  if [ 10 -lt $key ] && [ $key -lt 100 ]; then 
          ddcutil setvcp 10 $key
        else
          echo invalid value
    fi
esac

