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
# readonly alias
alias vr='vim -mR'
alias o='vim -mR'

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
alias gcb='git checkout'
alias gp='git push'
alias gd='git diff'
alias gP='git pull'
alias gr='git rm'
alias gl='git log'
alias gin='nvim .gitignore'

# xournalpp
alias xoup='xournalpp'

# zathura
alias z='zathura'

### other actions
#
# suspend 
alias sn='systemctl suspend'
function suspend
  command swaymsg output eDP-1 enable && systemctl suspend
end
# not sure if this causes the freezing in swaylock
# alias sn='swaymsg output eDP-1 enable && systemctl suspend'

# jupyter notebook 
alias jn='jupyter notebook' 
alias nj='jupyter notebook'

# call arxiv-downloader script with parameters
alias axu='arxiv-downloader'

# toggle main display (Sway)
alias tog='swaymsg output eDP-1 toggle'

# load script for external brightness. needs to be passed a number between 1 and 100 
alias eb='~/Documents/dotfiles/scripts/external-brightness.sh'
# too lazy to type 'eb'...
alias h='~/Documents/dotfiles/scripts/external-brightness.sh h'
alias 20='~/Documents/dotfiles/scripts/external-brightness.sh 20'
alias 30='~/Documents/dotfiles/scripts/external-brightness.sh 30'
alias 40='~/Documents/dotfiles/scripts/external-brightness.sh 40'
alias 50='~/Documents/dotfiles/scripts/external-brightness.sh 50'
alias 60='~/Documents/dotfiles/scripts/external-brightness.sh 60'
alias 70='~/Documents/dotfiles/scripts/external-brightness.sh 70'

# 7zip 
alias zip='7z a -tzip'
alias unzip='7z x'

# gphoto2  
alias getphotos='gphoto2 --new --get-all-files'

# alias for shutdown
alias killallkillall='shutdown'
alias killallkillallnow='shutdown now'

# other killalls
alias killz='killall zathura'
alias killr='killall ranger'

# FMI via VPN via openconnect
alias vpnfmi='sudo openconnect -b --useragent 'AnyConnect' --user=to75teh@uni-jena.de --pid-file=/var/run/vpn.pid --timestamp --syslog vpn.sci.uni-jena.de'
alias fmivpn='sudo openconnect -b --useragent 'AnyConnect' --user=to75teh@uni-jena.de --pid-file=/var/run/vpn.pid --timestamp --syslog vpn.sci.uni-jena.de'
alias endvpn='sudo killall openconnect'

#updates
alias updates='sudo pacman -Syu && yay -Syu'

# compress
alias compress='python3 compress2.py'

# go to the snippets location (and open the tex.snippets file)
alias snippets='cd ~/Documents/dotfiles/nvim/UltiSnips && nvim tex.snippets'

# signal hack
alias signal='signal-desktop --password-store="gnome-libsecret"'

# alias for unlocking ssh key (part of the way at least)
alias unlssh='ssh-agent /usr/bin/fish'
# && ssh-add ~/.ssh/id_ed25519
