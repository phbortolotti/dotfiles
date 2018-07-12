# Path
test -d "/sbin"; and set PATH "/sbin" $PATH
test -d "/bin"; and set PATH "/bin"
test -d "/usr/sbin"; and set PATH "/usr/sbin" $PATH
test -d "/usr/bin"; and set PATH "/usr/bin" $PATH
test -d "/usr/local/sbin"; and set PATH "/usr/local/sbin" $PATH
test -d "/usr/local/bin"; and set PATH "/usr/local/bin" $PATH
test -d "$HOME/.local/bin"; and set PATH "$HOME/.local/bin" $PATH

# Globally recognised variables
set -gx LANG en_US.UTF-8
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx PAGER less
set -gx MYVIMRC "$HOME/.config/nvim/init.vim"

# Fish shell
set -gx fish_greeting ''
set -gx __fish_git_prompt_showdirtystate 1
set -gx __fish_git_prompt_showstashstate 1
set -gx __fish_git_prompt_showuntrackedfiles 1
set -gx __fish_git_prompt_showupstream auto,verbose
set -gx __fish_git_prompt_color_dirtystate red
set FISH_CLIPBOARD_CMD "cat"

# Configure theme
set -g theme_display_docker_machine no
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_show_exit_status yes
set -g theme_display_virtualenv no
set -g default_user your_normal_user
set -g theme_color_scheme gruvbox
set -g fish_prompt_pwd_dir_length 2
set -g theme_display_git_master_branch yes
set -g theme_nerd_fonts yes

# FZF
set -gx FZF_LEGACY_KEYBINDINGS 0

# Go
set -gx GOROOT "/usr/local/go/"
set -gx GOPATH "$HOME/Development/gowork"
test -d "$GOROOT/bin"; and set PATH "$GOROOT/bin" $PATH
test -d "$GOPATH/bin"; and set PATH "$GOPATH/bin" $PATH

# Python
set -gx PYENV_ROOT "$HOME/.pyenv"
test -d "$PYENV_ROOT/bin"; and set PATH "$PYENV_ROOT/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# Rbenv
set -gx RBENV_ROOT "$HOME/.rbenv"
test -d "$RBENV_ROOT/bin"; and set PATH "$RBENV_ROOT/bin" $PATH

# Nodenv
set -gx NODENV_ROOT "$HOME/.nodenv"
test -d "$NODENV_ROOT/bin"; and set PATH "$NODENV_ROOT/bin" $PATH

# Java
set -gx JAVA_HOME "/usr/lib/jdk-oracle"
test -d "$JAVA_HOME/bin"; and set PATH "$JAVA_HOME/bin" $PATH

# Aliases
function ef; eval $EDITOR ~/.config/fish/config.fish; end
function ev; eval $EDITOR ~/.config/nvim/init.vim; end
function rf; . ~/.config/fish/config.fish; end
function vim; nvim $argv; end
function vi; nvim $argv; end
function oldvim; /usr/bin/vim $argv; end

# Plugins
fundle plugin phbortolotti/theme-bobthefish
fundle plugin fisherman/rbenv
fundle plugin fisherman/nodenv
fundle plugin fisherman/z
fundle plugin brgmnn/fish-docker-compose

fundle init
