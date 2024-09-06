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
# alias snj='sage --notebook jupyter' 
# jupyter notebook 
alias jn='jupyter notebook' 
alias nj='jupyter notebook'

# call arxiv-downloader script with parameters
alias axu='arxiv-downloader'
alias axi='arxiv-downloader'

# toggle main display (Sway)
alias tog='swaymsg output eDP-1 toggle'

# rclone
alias rlsd='rclone lsd nextcloud:'
alias rc='rclone'
#
# 'copy' is better than 'sync' as it does not erase the destination
alias copya='rclone copy ~/math/articles/ nextcloud:articles/'
alias fetcha='rclone copy nextcloud:articles/ ~/math/articles/'
alias copyb='rclone copy ~/math/books/ nextcloud:books/'
alias fetchb='rclone copy nextcloud:books/ ~/math/books/'
alias copyBB='rclone copy ~/math/notes/blackboard/ nextcloud:Blackboards/'
alias fetchBB='rclone copy nextcloud:Blackboards/ ~/math/notes/blackboard/'
alias copyn='rclone copy ~/math/notes/handwritten_notes/ nextcloud:notes/handwritten_notes/'
alias fetchn='rclone copy nextcloud:notes/handwritten_notes/ ~/math/notes/handwritten_notes/'
alias copyAZT='rclone copy ~/Downloads/AZT/ nextcloud:AZT/'
alias fetchAZT='rclone copy nextcloud:AZT/ ~/Downloads/AZT/'

# load script for external brightness. needs to be passed a number between 1 and 100 
alias eb='~/Documents/dotfiles/scripts/external-brightness.sh'

# 7zip 
alias zip='7z a -tzip'
alias unzip='7z x'

# gphoto2  
alias getphotos='gphoto2 --new --get-all-files'

# alias for shutdown
alias killallkillall='shutdown'
alias killallkillallnow='shutdown now'

# FMI via VPN via openconnect
alias vpnfmi='sudo openconnect -b --useragent 'AnyConnect' --user=to75teh@uni-jena.de --pid-file=/var/run/vpn.pid --timestamp --syslog vpn.sci.uni-jena.de'
