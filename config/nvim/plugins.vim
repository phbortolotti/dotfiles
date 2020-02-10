call plug#begin('~/.config/nvim/plugged')

" General plugins {{{
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'
" }}}

" Colors / Themes {{{
Plug 'sickill/vim-monokai'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" }}}

" Lang support {{{
Plug 'ternjs/tern_for_vim', { 'do': 'npm i && npm i -g tern' }
Plug 'carlitux/deoplete-ternjs'
Plug 'plasticboy/vim-markdown'                 " Markdown syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'            " TypeScript syntax
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'pangloss/vim-javascript'                 " JavaScript syntax highlighting
Plug 'mxw/vim-jsx'                             " JSX syntax highlighting
Plug 'hail2u/vim-css3-syntax'                  " html bundle
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'
" }}}

call plug#end()
