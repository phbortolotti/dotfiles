" Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

if executable('ag')
        let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif
