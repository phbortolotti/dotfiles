" ------------------------------------------------------------------------------
" PLUGINS
" ------------------------------------------------------------------------------
source ~/.config/nvim/plugins.vim

" ------------------------------------------------------------------------------
" SETTINGS
" ------------------------------------------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set completeopt-=preview          " remove the horrendous preview window
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=2
set tabstop=2
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set mouse=a                       " enable mouse
set foldenable                    " enable folding
set foldmethod=syntax             " global folding method
set foldlevelstart=20            " folds with level 1 aren't closed
set laststatus=2                  " show status bar by default

" Allow vim to set a custom font or color for a word
syntax enable

" Set the leader button
let mapleader = ','

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Center the screen quickly
nnoremap <space> zz

" Misc - Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" ------------------------------------------------------------------------------
" COLORS
" ------------------------------------------------------------------------------
set background=dark
colorscheme PaperColor

" set transparency =]
hi Normal guibg=NONE ctermbg=none
hi NonText guibg=NONE ctermbg=none
let t:is_transparent = 1

" ------------------------------------------------------------------------------
" SEARCHING
" ------------------------------------------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting
set inccommand=split              " enables interactive search and replace


" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" ------------------------------------------------------------------------------
" NAVIGATION
" ------------------------------------------------------------------------------
" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" Close buffer
nnoremap <S-Down> :bdelete<cr>

" ... but skip the quickfix when navigating
augroup qf
        autocmd!
        autocmd FileType qf set nobuflisted
augroup END

" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" ------------------------------------------------------------------------------
" SPLITS
" ------------------------------------------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

" ------------------------------------------------------------------------------
" FILE TYPES
" ------------------------------------------------------------------------------
source ~/.config/nvim/filetypes.vim

