Things learnt

# yay
Before you attempt to install yay, or do something like 'sudo pacman -S --needed base-devel git', do a system update and check whether the above command wants to install anything called sudo or pacman or so. This will likely result in disaster so don't do it.

#neovim
Install the plugins, according to instructions in plug.vim file and junegunn/vim-plug github page
pip: is needed, neovim will tell you this as well, but you could also make sure that pip is installed (can be done manually via 'python3 -m ensurepip --upgrade'). Once you have pip, you can run 'python3 -m pip install --user --upgrade pynvim'

# sway
Don't remove the initial sway config file, just move it elsewhere, at first.


# fish
no idea why 'chsh -s /usr/bin/fish' does not work. The workaround is to keybind alacritty starting with fish to mod+enter: 'set $term alacritty -e fish' in sway/config
Install the package 'lsd' to get the lsd command to work.

# packages / programs
- brightnessctl: to adjust screen brightness
- pavucontrol: audio and volume control
- dmenu: dmenu

# latex
Install texlive ('sudo pacman -S texlive-core texlive-science texlive-latexextra texlive-bibtexextra texlive-bin' should to it). 

# pacman
customize mirror pool: 
'sudo pacman-mirrors --country Germany,Denmark,Netherlands,France,Austria,Switzerland && sudo pacman -Syyu'

# ssh
see https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys

# zathura
Zathura needs a plugin to read pdfs and co. 'sudo pacman -S zathura-pdf-mupdf' for instance
