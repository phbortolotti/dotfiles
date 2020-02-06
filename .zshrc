# Path to your oh-my-zsh installation.
export ZSH="/home/phbpx/.oh-my-zsh"

# Theme
ZSH_THEME="steeef"

# Plugins
plugins=(
  fast-syntax-highlighting
  git
  golang
  nvm
  pyenv
  docker
  docker-compose
  fzf
  autojump
)

# Let's Rock
source $ZSH/oh-my-zsh.sh

# Default User
#DEFAULT_USER="phbpx"

# Disable auto title
DISABLE_AUTO_TITLE=true

export LANG=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim
export PAGER=less
export TERM=xterm-256color
export MYVIMRC="$HOME/.config/nvim/init.vim"
export MYVIMRC_PG="$HOME/.config/nvim/plugins.vim"
export MYVIMRC_ST="$HOME/.config/nvim/settings.vim"
export MYVIMRC_FT="$HOME/.config/nvim/filetypes.vim"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# golang
export GOROOT="/usr/lib/go/"
export GOPATH="$HOME/Development/gowork"
export PATH="$PATH:$GOPATH/bin"

# virtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvim-config="$EDITOR $MYVIMRC"
alias nvim-plugins="$EDITOR $MYVIMRC_PG"
alias nvim-settings="$EDITOR $MYVIMRC_ST"
alias nvim-filetypes="$EDITOR $MYVIMRC_FT"

alias oldvim="/usr/bin/vim"
alias vim="nvim"

