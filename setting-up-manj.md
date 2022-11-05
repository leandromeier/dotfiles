Things learnt


#neovim
Install the plugins, according to instructions in plug.vim file and junegunn/vim-plug github page
pip: is needed, neovim will tell you this as well, but you could also make sure that pip is installed (can be done manually via 'python3 -m ensurepip --upgrade'). Once you have pip, you can run 'python3 -m pip --user --upgrade pynvim'

# sway
Don't remove the initial sway config file, just move it elsewhere, at first.


# fish
no idea why 'chsh -s /usr/bin/fish' does not work.
Install the package 'lsd' to get the lsd command to work.

# packages / programs
- brightnessctl: to adjust screen brightness
- pavucontrol: audio and volume control
- dmenu: dmenu

# latex
Install texlive (sudo pacman -S texlive-core and -science should to it). If there are initially erros abt comment.sty not being found when compiling, comment that line, then re-compile, this should permanently stop that error.
