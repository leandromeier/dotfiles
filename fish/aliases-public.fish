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

# lock and suspend 
#this appears to make waybar disappear upon resume
#alias sn='loginctl lock-session && systemctl suspend'
# wait and see if this is better 
alias sn='systemctl suspend'

# only lock
alias lock='loginctl lock-session'

# bluetoothctl
alias bl='bluetoothctl'

#sage notebook jupyter
alias snj='sage --notebook jupyter'

#jupyter notebook 
alias jn='jupyter notebook'
alias nj='jupyter notebook'

# arxiv-downloader
alias axu='arxiv-downloader --url'
alias axi='arxiv-downloader --id'

# toggle main display (Sway)
alias tog='swaymsg output eDP-1 toggle'

# rclone
alias rlsd='rclone lsd nextcloud:'
alias rc='rclone'
alias rcla='rclone sync ~/Documents/math-books/articles/ nextcloud:articles/'
alias rclb='rclone sync ~/Documents/math-books/books/ nextcloud:books/'


# load script for external brightness. needs to be passed a number between 1 and 100
alias eb='~/Documents/dotfiles/scripts/external-brightness.sh'
