set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nosmartindent
set textwidth=79
set colorcolumn=80

map <F5> :w<CR>:!chmod +x "%"<CR>:!./"%"<CR>
map <F6> :w<CR>:!./.run <CR>

set foldmethod=indent
set foldlevel=99
set foldnestmax=2

" let ropevim_vim_completion=1
" let ropevim_extended_complete=1
let g:ropevim_enable_autoimport = 1
let g:ropevim_autoimport_modules = ["os", "shutil", "sys", "random"]
let g:ropevim_enable_shorcuts = 1
let g:ropevim_guess_project = 1

" Completion
setlocal omnifunc=RopeCompleteFunc				" Inlcude rope completion in SuperTab
let g:SuperTabDefaultCompletionType="context"
set completeopt=menuone,longest,preview
set previewheight=15							" maximum height for preview window
set foldmethod=indent
"set foldlevel=99
set foldnestmax=2

nnoremap <C-o> :RopeAutoImport<CR>
nnoremap <C-n> :RopeRename<CR>

imap <buffer> . .<Tab>
