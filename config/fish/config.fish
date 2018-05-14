# vim:fdm=marker
# vim:foldmethod=marker:foldlevel=0

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
set -gx LANG en_US.UTF-8
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx PAGER less
set -gx TERM xterm-256color

# Fish shell
set -gx fish_greeting ''
set -gx __fish_git_prompt_showdirtystate 1
set -gx __fish_git_prompt_showstashstate 1
set -gx __fish_git_prompt_showuntrackedfiles 1
set -gx __fish_git_prompt_showupstream auto,verbose
set -gx __fish_git_prompt_color_dirtystate red
set FISH_CLIPBOARD_CMD "cat"

# Theme
set -gx theme_display_docker_machine no
set -gx theme_display_vi no
set -gx theme_display_date no
set -gx theme_display_cmd_duration yes
set -gx theme_nerd_fonts yes
set -gx theme_show_exit_status yes
set -gx theme_color_scheme gruvbox
set -gx fish_prompt_pwd_dir_length 2

# FZF
set -gx FZF_LEGACY_KEYBINDINGS 0

# Go
set -gx GOROOT "/usr/local/go"
set -gx GOPATH "$HOME/Development/gowork"
test -d "$GOROOT/bin"; and set PATH "$GOROOT/bin" $PATH
test -d "$GOPATH/bin"; and set PATH "$GOPATH/bin" $PATH

# Python
set -gx PYENV_ROOT "$HOME/.pyenv"
test -d "$PYENV_ROOT/bin"; and set PATH "$PYENV_ROOT/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# }}}

# Aliases {{{

# Fish config editing

function ef; eval $EDITOR ~/.config/fish/config.fish; end
function ev; eval $EDITOR ~/.config/nvim/init.vim; end
function rf; . ~/.config/fish/config.fish; end
function vim; nvim $argv; end
function vi; nvim $argv; end
function oldvim; /usr/bin/vim $argv; end

# }}}
