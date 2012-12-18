set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nosmartindent
set textwidth=79
set colorcolumn=80

map <F5> :w<CR>:!chmod +x "%"<CR>:!./"%"<CR>
map <F6> :w<CR>:!./.run <CR>

let g:pymode_rope_goto_def_newwin = "new"
let g:pymode_folding = 0
let g:ropevim_enable_autoimport = 0
let g:pymode_rope_auto_project = 1
" let g:ropevim_guess_project = 1

" Completion
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview
set previewheight=20							" maximum height for preview window


set foldmethod=indent
"set foldlevel=99
set foldnestmax=2


nnoremap <leader>n :RopeRename<CR>
nnoremap <leader>g :RopeGotoDefinition<CR>
nnoremap <leader>d :RopeShowDoc<CR>
