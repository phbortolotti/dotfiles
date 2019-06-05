# Path to your oh-my-zsh installation.
export ZSH="/home/phbortolotti/.oh-my-zsh"

# Theme
ZSH_THEME=powerlevel10k/powerlevel10k

# Plugins
plugins=(
  fast-syntax-highlighting
  git
  nvm
  pyenv
  golang
  docker
  docker-compose
  fzf
  autojump
)

# Let's Rock
source $ZSH/oh-my-zsh.sh

# Default User
DEFAULT_USER="phbortolotti"

# User configuration
DISABLE_AUTO_TITLE="true"

export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR=vim
export PAGER=less
export MYVIMRC="$HOME/.vimrc"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# golang
export GOROOT="/usr/lib/go/"
export GOPATH="$HOME/Development/gowork"
export PATH="$PATH:$GOPATH/bin"

# dotnet
export DOTNET_ROOT="/opt/dotnet/sdks/2.2.203"
export PATH="$PATH:$DOTNET_ROOT"

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvimconfig="$EDITOR $MYVIMRC"

source ~/.purepower

neofetch
