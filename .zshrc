# Path to your oh-my-zsh installation.
export ZSH="/home/phbortolotti/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"

# Plugins
plugins=(
  fast-syntax-highlighting
  git
  nvm
  pyenv
  rbenv
  golang
  docker
  docker-compose
  fzf
  autojump
)

# Let's Rock
source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim
export PAGER=less
export MYVIMRC="$HOME/.config/nvim/init.vim"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# golang
export GOROOT="/usr/local/go/"
export GOPATH="$HOME/Development/gowork"
export PATH="$PATH:$GOROOT/bin"
export PATH="$PATH:$GOPATH/bin"

# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvimconfig="$EDITOR $MYVIMRC"
