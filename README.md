# dotfiles
alacritty links to ~/.config/alacritty

fish links to ~/.config/fish

nvim links to ~/.config/nvim

zathura links to ~/.config/zathura

gitconfig is at ~/.gitconfig

sway links to ~/.config/sway
and so on...
waybar configs are at ~/.config/waybar

#simlinks
ln -s /absolute/path/to/original /abs/path/to/link
e.g. ln -s ~/Documents/dotfiles/gitconfig ~/.gitconfig 
The original has to be in the repo folder, otherwise git won't see the changes made to it


# necessary programs

  for screenshots under wayland: slurp, grim
  for screen brightness under wayland: brightnessctl
  audio control: pactl
  to hide the mouse pointer: unclutter

  others: rofi, dmenu, alacritty, fish, ...

# sage
To get better colors for Linux, add the line '%colors Linux' to the file init.sage in ~/.sage folder, or create the file if it does not yet exist. 


# swapping caps and escape
Add the line 'Option "XkbOptions" "caps:swapescape" ' to the file 00-keyboard.conf in /etc/X11/xorg.conf
