" Use The Silver Searcher
if executable('ag')
        let g:ackprg = 'ag --vimgrep'
endif

nnoremap <C-f> :Ack!<space>
