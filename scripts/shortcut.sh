#!/bin/bash

root="$(dirname "$(realpath "$0")")"
key="$1"
terminal="alacritty -e fish -i -c"
vim="nvim"
node="/usr/bin/node"

open_xournalpp () {
    cd ~/math/notes/daily-notes/$(date +"%F"); 
    if [ -f "note.xopp" ]; then
        xournalpp note.xopp;
    else 
        cp ~/math/scripts/template.xopp note.xopp;
        xournalpp note.xopp;
    fi
}

mkdir -p ~/math/notes/$(date +"%F"); 

case $key in
   p ) cd ~/math/articles;
       pdf_file="$(ls . | rofi -i -dmenu)";
       [ -z "$pdf_file" ] && exit 0;
       [ -f "$pdf_file" ] && zathura "$(realpath "$pdf_file")" || sensible-browser "https://google.com/search?q=$pdf_file" ;;
   r ) $terminal "ranger ~/math/notes/daily-notes/$(date +"%F")" ;;
   n ) $terminal "cd ~/math/notes/daily-notes/$(date +"%F"); $vim ~/math/notes/daily-notes/$(date +"%F")/note.tex" ;;
   t ) $terminal "cd ~/math/notes/daily-notes; $vim ~/math/notes/daily-notes/main.tex" ;;
   o ) zathura ~/math/notes/daily-notes/main.pdf;;
   x ) open_xournalpp ;;
   f ) $node $root/copy-pdf-reference.js ;;
esac


