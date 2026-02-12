set fish_greeting
fish_vi_key_bindings

### environment variables
source ~/.config/fish/environment-vars.fish

# aliases
source ~/.config/fish/aliases-public.fish
#source ~/.config/fish/aliases-private.fish

#set neovim as default editor
set -gx EDITOR nvim

# works to autostart sway at login
if status is-login
  dbus-run-session sway
end

# keychain
# this will ask to unlock the .ssh key the first time you open a terminal 
# per login, then it'll be unlocked for all following (fish shell) terminal instances
if type -q keychain
    SHELL=(which fish) keychain --quiet --eval id_ed25519 | source
end

