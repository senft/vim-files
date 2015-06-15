setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal nosmartindent
setlocal textwidth=79
setlocal colorcolumn=80

let g:syntastic_python_checkers = ['flake8', 'pyflakes']
let g:syntastic_python_flake8_args = '--ignore=E501'

" let g:pymode_lint = 0
" let g:pymode_rope = 1
" let g:pymode_rope_vim_completion = 0
" let g:pymode_rope_complete_on_dot = 0
" 
" let g:pymode_rope_auto_project = 1
" let g:pymode_trim_whitespaces = 1
" 
" let g:pymode_rope_rename_bind = '<leader>n'
" let g:pymode_rope_goto_definition_bind = '<leader>d'

iab true True
iab false False
