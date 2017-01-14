export ZSH=/home/pbortolotti/.oh-my-zsh

ZSH_THEME="lambda-mod"

DISABLE_AUTO_TITLE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh


alias python=python3
alias ls='ls -lhA --color=auto'


export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="/home/pbortolotti/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/Development/goworkspace"
export PATH="$PATH:$GOROOT/bin"
