set fish_greeting ""

# Homebrew
fish_add_path /opt/homebrew/bin

# Go
set -g GOPATH $HOME/go
fish_add_path $GOPATH/bin

# Key Bindings
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# nvm
set -U nvm_default_version v16.17.1
