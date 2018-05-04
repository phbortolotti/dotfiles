" Plug setup
"==================================================================

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Bundles
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
" markdown
Plug 'tpope/vim-markdown'
" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
" javascript
Plug 'jelera/vim-javascript-syntax'

" Initialize plugin system
call plug#end()



" Globals Options
"==================================================================

" color.
syntax on
colorscheme gruvbox
set background=dark
set t_Co=256
set term=screen-256color
let g:gruvbox_contrast_dark='hard'

" leader key.
let mapleader="\<space>"

" misc.
set nu
set relativenumber
set nobackup
set noundofile
set nowrap
set scrolloff=3
set fileformats=unix,dos,mac
set autoread

" encoding.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

" allow backspacing over everything in insert mode.
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set showmode

" search.
set hlsearch
set incsearch
set ignorecase
set smartcase
set nohlsearch

" tab (may be overriten by autocmd rules).
set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab

" mouse (yes, mouse).
set mouse=a

" always diff using vertical mode
set diffopt+=vertical

" handle multiple buffers better.
set hidden

" enhanced command line completion.
set wildmenu

" complete files like a shell.
set wildmode=list:longest

" status line
set laststatus=2



" Abbreviations
"=================================================================
" no one is really happy until you have this shortcuts.
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



" Mappings
"==================================================================

" misc.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" terminal.
nnoremap <leader>sh :terminal<cr>

" split.
nnoremap <Leader>h :<C-u>split<cr>
nnoremap <Leader>v :<C-u>vsplit<cr>

" tabs.
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>

" move among buffers with ctrl.
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bprev<cr>

" search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" use ctrl + p (like sublime).
" (needs fzf).
nnoremap <c-p> :Files<cr>

" use ctrl + f.
" (needs the_silver_searcher).
nnoremap <c-f> :Ag<space>



" Custom Configs
"==================================================================

" ##### fzf.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND = "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"


" ##### ag (the_silver_searcher).
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
set grepprg=ag\ --nogroup\ --nocolor


" ##### nerdtree.
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" show nerdtree.
nnoremap <silent> <leader>ft :NERDTreeToggle<cr>


" ##### vim-airline.
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='gruvbox'


" ##### vim-figitive.
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>


" ##### indentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1


" ##### emmet.
let g:user_emmet_leader_key='<c-z>'



" Functions
"=================================================================
if !exists('*s:setupWrapping')
	function s:setupWrapping()
		set wrap
		set wm=2
		set textwidth=79
	endfunction
endif



" Autocmd Rules
"==================================================================

" the PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
   autocmd!
   autocmd BufEnter * :syntax sync maxlines=200
augroup END

" remember cursor position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" txt
augroup vimrc-wrapping
	autocmd!
	autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

" make/cmake
augroup vimrc-make-cmake
	autocmd!
	autocmd FileType make setlocal noexpandtab
	autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END



" FileTypes
"==================================================================

" ##### vim.
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
let g:jsx_ext_required = 0


" ##### markdown.
" sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap
autocmd BufEnter *.md colorscheme badwolf
let g:markdown_fenced_languages = ['python', 'bash=sh']

" set textwidth to 80 columns
autocmd FileType md set textwidth=80


" ##### xml.
" automatically format XML files.
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G


" ##### html.
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" emmet.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" ##### javascript.
let g:javascript_enable_domhtmlcss = 1

" sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript

" sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END


" ##### ruby.
" pecific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
" convert tabs to spaces in Ruby files
autocmd FileType ruby set expandtab

" but not for erb files...
autocmd FileType eruby set shiftwidth=4
autocmd FileType eruby set tabstop=4

" remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir
