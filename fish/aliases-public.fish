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
#alias sn='loginctl lock-session && systemctl suspend'
# for lenovo: atm the following is the only thing which seems to lock and suspend
alias sn='systemctl suspend'

# only lock
alias lock='loginctl lock-session'

# bluetoothctl
alias bl='bluetoothctl'
