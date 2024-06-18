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

alias gweb="open $(git config remote.origin.url | sed 's!.*:!https://github.com/!')"

alias cof="git branch | fzf --height 40% | xargs git checkout"
alias cob="git checkout -b"
alias pull="git pull"
alias push="git push"
alias st="git status"
alias ad="git add"
alias cm="git commit -m"

alias pbcp='pbcopy'

# others
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^f' autosuggest-accept
bindkey '^j' forward-word
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /opt/homebrew/etc/profile.d/z.sh
source "$HOME/.rye/env"
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure


function cmcp() {
       echo -n "$BUFFER" | pbcopy
}

zle -N cmcp
bindkey '^k' cmcp
