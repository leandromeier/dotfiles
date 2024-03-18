### Navigation
alias d='cd'
alias q='exit'
alias :q='exit'

### Launch programs
#
# neovim
# --servername VIM for it to work with reverse synctex
alias v='nvim'
alias vim='nvim '

# ls
alias ls='lsd'
alias s='lsd -la'

# ranger
alias r='ranger'

# git
alias ga='git add'
alias g='git status'
alias gs='git status'
alias gc='git commit'
alias gb='git branch'
alias gp='git push'
alias gd='git diff'
alias gP='git pull'
alias gr='git rm'

# xournalpp
alias xoup='xournalpp'

# zathura
alias z='zathura'

### other actions
#
# suspend 
alias sn='systemctl suspend'

# sage notebook jupyter
alias snj='sage --notebook jupyter'

# jupyter notebook 
alias jn='jupyter notebook'
alias nj='jupyter notebook'

# call arxiv-downloader script with parameters
alias axu='arxiv-downloader --url'
alias axi='arxiv-downloader --id'

# toggle main display (Sway)
alias tog='swaymsg output eDP-1 toggle'

# rclone
alias rlsd='rclone lsd nextcloud:'
alias rc='rclone'
#
# 'copy' is better than 'sync' as it does not erase the destination
alias copya='rclone copy ~/Documents/math-books/articles/ nextcloud:articles/'
alias copyb='rclone copy ~/Documents/math-books/books/ nextcloud:books/'
alias fetcha='rclone copy nextcloud:articles/ ~/Documents/math-books/articles/'
alias fetchb='rclone copy nextcloud:books/ ~/Documents/math-books/books/'
alias fetchBB='rclone copy nextcloud:Blackboards/ ~/Documents/notes/blackboard/'

# load script for external brightness. needs to be passed a number between 1 and 100 
alias eb='~/Documents/dotfiles/scripts/external-brightness.sh'

# 7zip 
alias zip='7z a -tzip'
alias unzip='7z x'

# gphoto2  
alias getphotos='gphoto2 --new --get-all-files'

# new terminal with fish
alias alacritty='alacritty -e fish'
alias term='alacritty -e fish'
alias t='alacritty -e fish'

