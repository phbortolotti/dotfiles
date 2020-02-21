call plug#begin('~/.config/nvim/plugged')

" GENERAL
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'

" LANGUAGE
Plug 'godlygeek/tabular'          " Dependency for plasticboy/vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'mrk21/yaml-vim'
Plug 'fatih/vim-go'               " Go support

" COLORS
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
