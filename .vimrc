set nocompatible

call pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on
set encoding=utf-8

"" Backups
set nobackup                    " do not keep a backup file, use versions instead
set nowritebackup
set noswapfile                  " (additionally disable swap files)

set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set number                      " display line numbers
set showmode

set modeline                    " use vim-directives in files
set cursorline

set laststatus=2

set tabstop=4                   " a tab is 4 spaces
set shiftwidth=4
set softtabstop=4
set smartindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set guioptions-=T               " remove toolbar
set guioptions-=r               " remove right-hand scroll-bar
set guioptions-=e               " remove tabbar
set guifont=Envy\ Code\ R\ 10
set mouse=a

color badwolf

"let g:syntastic_disabled_filetypes = ['py']
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 0 " dont show a quickfix window when errors are found

" Press Space to toggle hilighting (after search)
:nnoremap <Space> :set hlsearch!<CR>

" Tagbar
nmap <F4> :TagbarToggle<CR>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>
"
" We have to remap vim-latex's mapping to <C-j> in order to use it...
nnoremap <C-space> <Plug>IMAP_JumpForward

" Move between windows with crtl+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Folding
nnoremap <Space> za
"vnoremap <Space> zf


"  Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Arrow keys for buffer movement
noremap <left> :bp!<CR>
noremap <right> :bn!<CR>

" sv for vertical split, sh for horizontal
nnoremap <silent> sv <C-w>v
nnoremap <silent> sh :split<CR>

"Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" fugitive maps
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gd :Gdiff<CR>

:set completeopt=longest,menuone
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabMappingForward="<tab>"
let g:SuperTabLongestHighlight=1

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab>"

" Make CTRLP's starting directory the dir of current file
let g:ctrlp_working_path_mode = 'c'

" Restore cursor position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"" toggle relative number
"if exists('&relativenumber')
"  function! s:ToggleRelativeNumber()
"    if &relativenumber
"      set norelativenumber
"      let &number = b:togglernu_number
"    else
"      let b:togglernu_number = &number
"      set relativenumber
"    endif
"  endfunction
"  noremap <silent> <Leader>n :<C-U>call <SID>ToggleRelativeNumber()<CR>
"endif

function! PreviewDown() 
   if !&previewwindow 
       silent! wincmd P 
   endif 
   if &previewwindow 
       silent! wincmd J 
       silent! wincmd p 
   endif 
endf 

au BufWinEnter * call PreviewDown() 
