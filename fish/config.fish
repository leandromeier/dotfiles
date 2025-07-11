set fish_greeting
fish_vi_key_bindings

### environment variables
source ~/.config/fish/environment-vars.fish

# aliases
source ~/.config/fish/aliases-public.fish
#source ~/.config/fish/aliases-private.fish

#set neovim as default editor
set -gx EDITOR nvim


## try to get ssh to work better
if status is-login
    keychain --clear --quiet
end

# don't have any gpg keys
# if test -f ~/.keychain/(hostname)-gpg-fish
#     source ~/.keychain/(hostname)-gpg-fish
# end

if test -f ~/.keychain/(hostname)-fish
    source ~/.keychain/(hostname)-fish
end
