set fish_greeting ""

# Homebrew
fish_add_path /opt/homebrew/bin

# MacPorts
fish_add_path /opt/local/bin

# Go
set -g GOPATH $HOME/go
fish_add_path $GOPATH/bin

# Rust
fish_add_path $HOME/.cargo/bin

# Python
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source

fish_add_path $HOME/.local/bin

# Key Bindings
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

# nvm
set -U nvm_default_version v16.17.1

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

