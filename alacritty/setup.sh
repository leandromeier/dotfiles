#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mv ~/.config/alacritty ~/.config/alacritty.old
ln -s -i "$DIR"/alacritty.yml ~/.config/alacritty/

