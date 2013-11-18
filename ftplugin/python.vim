set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nosmartindent
set textwidth=79
set colorcolumn=80

map <F5> :w<CR>:!chmod +x "%"<CR>:!./"%"<CR>
map <F6> :w<CR>:!./.run <CR>

let g:syntastic_python_checkers = ['flake8', 'pyflakes']
let g:syntastic_python_flake8_args = '--ignore=E501'

let g:pymode_lint = 0

let g:pymode_rope = 1
let g:pymode_rope_vim_completion = 0
let g:pymode_rope_auto_project = 1
let g:ropevim_enable_autoimport = 0
let g:ropevim_guess_project = 0

" Completion
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest
set previewheight=20							" maximum height for preview window

nnoremap <leader>n :RopeRename<CR>
nnoremap <leader>d :RopeGotoDefinition<CR>
nnoremap <leader>h :RopeShowDoc<CR>

let g:ipy_completefunc = ''
