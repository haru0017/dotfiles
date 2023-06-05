# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Python
export PATH=$PATH:/opt/homebrew/bin/python3

# OCaml
[[ ! -r /Users/haru0017/.opam/opam-init/init.zsh ]] || source /Users/haru0017/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Alias
alias python='python3'
alias ocaml='rlwrap ocaml'
