set fish_greeting ""

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Key Bindings
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# nvm
set -U nvm_default_version v16.17.1
