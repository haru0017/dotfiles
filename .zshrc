# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Python
export PATH=$PATH:/opt/homebrew/bin/python3

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# OCaml
[[ ! -r /Users/haru0017/.opam/opam-init/init.zsh ]] || source /Users/haru0017/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Alias
alias python='python3'
alias ocaml='rlwrap ocaml'
