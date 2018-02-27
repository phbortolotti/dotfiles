# vim: fdm=marker

# Environment variables {{{

# Path
test -d "/sbin"; and set PATH "/sbin" $PATH
test -d "/bin"; and set PATH "/bin"
test -d "/usr/sbin"; and set PATH "/usr/sbin" $PATH
test -d "/usr/bin"; and set PATH "/usr/bin" $PATH
test -d "/usr/local/sbin"; and set PATH "/usr/local/sbin" $PATH
test -d "/usr/local/bin"; and set PATH "/usr/local/bin" $PATH
test -d "$HOME/.local/bin"; and set PATH "$HOME/.local/bin" $PATH

# Globally recognised variables
set -g -x LANG en_US.UTF-8
set -g -x VISUAL vim
set -g -x EDITOR vim
set -g -x PAGER less

# Fish shell
set -g -x fish_greeting ''
set -g -x __fish_git_prompt_showdirtystate 1
set -g -x __fish_git_prompt_showstashstate 1
set -g -x __fish_git_prompt_showuntrackedfiles 1
set -g -x __fish_git_prompt_showupstream auto,verbose
set -g -x __fish_git_prompt_color magenta
set -g -x __fish_git_prompt_color_dirtystate red
set FISH_CLIPBOARD_CMD "cat"

# Theme
set -g -x theme_display_date no
set -g -x theme_nerd_fonts yes
set -g -x theme_color_scheme dark

# Go
set -g -x GOROOT "/usr/local/go"
set -g -x GOPATH "$HOME/Development/gowork"
test -d "$GOROOT/bin"; and set PATH "$GOROOT/bin" $PATH
test -d "$GOPATH/bin"; and set PATH "$GOPATH/bin" $PATH

# Python
set -g -x PYENV_ROOT "$HOME/.pyenv"
test -d "$PYENV_ROOT/bin"; and set PATH "$PYENV_ROOT/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# }}}

