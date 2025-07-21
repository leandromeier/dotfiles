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
