set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nosmartindent
set textwidth=79
set colorcolumn=80

map <F5> :w<CR>:!chmod +x "%"<CR>:!./"%"<CR>
map <F6> :w<CR>:!./.run <CR>

" Completion
set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set foldmethod=indent
set foldlevel=99
set foldnestmax=2

let g:pymode_rope = 0
"let g:pymode_rope_auto_project = 0
"let g:pymode_rope_vim_completion = 0
