#!/bin/bash
#heavily pruned (original by Gilles Castel)

key="$1"
case $key in
   a ) cd ~/math/articles;
       pdf_file="$(ls . | rofi -i -dmenu)";
       [ -z "$pdf_file" ] && exit 0;
       [ -f "$pdf_file" ] && zathura "$(realpath "$pdf_file")" || firefox "https://duckduckgo.com/?hps=1&q=$pdf_file" ;;
   b ) cd ~/math/books;
       pdf_file="$(ls . | rofi -i -dmenu)";
       [ -z "$pdf_file" ] && exit 0;
       [ -f "$pdf_file" ] && zathura "$(realpath "$pdf_file")" || firefox "https://duckduckgo.com/?hps=1&q=$pdf_file" ;;
esac

