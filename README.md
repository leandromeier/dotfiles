# dotfiles
alacritty links to ~/.config/alacritty

fish links to ~/.config/fish

nvim links to ~/.config/nvim

zathura links to ~/.config/zathura

gitconfig is at ~/.gitconfig

i3 links to ~/.config/i3

polybar configs are at ~/.config/polybar

#simlinks
ln -s /absolute/path/to/original /abs/path/to/link
e.g. ln -s ~/Documents/dotfiles/gitconfig ~/.gitconfig 
The original has to be in the repo folder, otherwise git won't see the changes made to it
