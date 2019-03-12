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
DISABLE_AUTO_TITLE="true"

export LANG=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim
export PAGER=less
export MYVIMRC="$HOME/.config/nvim/init.vim"
export PYENV_ROOT="$HOME/.pyenv"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# golang
export GOROOT="/usr/local/go/"
export GOPATH="$HOME/Development/gowork"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

# adr tools
export ADR_TOOLS="/home/phbortolotti/Development/tools/adr-tools-3.0.0"
export PATH="$PATH:$ADR_TOOLS/src"

# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvimconfig="$EDITOR $MYVIMRC"
alias tb="taskbook"
alias scaleup="gsettings set org.gnome.desktop.interface text-scaling-factor 1.25"
alias scaledown="gsettings set org.gnome.desktop.interface text-scaling-factor 1"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
