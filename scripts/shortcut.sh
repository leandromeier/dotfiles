#!/bin/bash
#heavily edited (original by Gilles Castel)

key="$1"
case $key in
   a ) cd ~/math/articles;
       pdf_file=$(find . -name '*.pdf' | rofi -dmenu -i);
       # pdf_file="$(ls . | rofi -i -dmenu)";
       [ -z "$pdf_file" ] && exit 0;
       [ -f "$pdf_file" ] && zathura "$(realpath "$pdf_file")" || firefox "https://duckduckgo.com/?hps=1&q=$pdf_file" ;;
   b ) cd ~/math/books/;
       pdf_file=$(find . -name '*.pdf' | rofi -dmenu -i);
       [ -z "$pdf_file" ] && exit 0;
       [ -f "$pdf_file" ] && zathura "$(realpath "$pdf_file")" || firefox "https://duckduckgo.com/?hps=1&q=$pdf_file" ;;
esac

       #pdf_file="$(ls . | rofi -i -dmenu)";
