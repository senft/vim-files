set nocompatible
set encoding=utf-8

" ----------------------------------------------------------------------------
" Pathogen
" ----------------------------------------------------------------------------
filetype off
call pathogen#infect()
call pathogen#helptags()

" ----------------------------------------------------------------------------
" moving around, searching and patterns
" ----------------------------------------------------------------------------
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ----------------------------------------------------------------------------
" displaying text
" ----------------------------------------------------------------------------
set number                      " display line numbers

" ----------------------------------------------------------------------------
" syntax, highlighting and spelling
" ----------------------------------------------------------------------------
syntax on
filetype plugin on
filetype plugin indent on

set cursorline					" highlight the screen line of the cursor

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
color molokai

" ----------------------------------------------------------------------------
" multiple windows
" ----------------------------------------------------------------------------
set laststatus=2				" always display statusbar
set previewheight=20			" maximum height for preview window

" ----------------------------------------------------------------------------
" terminal
" ----------------------------------------------------------------------------
set ttyfast

" ----------------------------------------------------------------------------
" using the mouse
" ----------------------------------------------------------------------------
set mouse=nicr					" mouse click does not enter visual mode

" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
set guioptions-=T               " remove toolbar
set guioptions-=r               " remove right-hand scroll-bar
set guioptions-=e               " remove tabbar
set guifont=Envy\ Code\ R\ 10

" ----------------------------------------------------------------------------
" printing
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" messages and info
" ----------------------------------------------------------------------------
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set showmode

" ----------------------------------------------------------------------------
" selecting text
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" editing text
" ----------------------------------------------------------------------------
set completeopt=menu,longest,preview

" ----------------------------------------------------------------------------
" tabs and indenting
" ----------------------------------------------------------------------------
set tabstop=4                   " a tab is 4 spaces
set shiftwidth=4
set softtabstop=4
set smartindent

" ----------------------------------------------------------------------------
" folding
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" mapping
" ----------------------------------------------------------------------------
" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>

" We have to remap vim-latex's mapping to <C-j> in order to use it...
nnoremap <C-space> <Plug>IMAP_JumpForward

" Move between windows with crtl+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Folding
nnoremap <space> za
vnoremap <space> zf

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Arrow keys for buffer movement
noremap <left> :bp!<CR>
noremap <right> :bn!<CR>

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" sv for vertical split, sh for horizontal
nnoremap <silent> sv <C-w>v
nnoremap <silent> sh :split<CR>

"Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" fugitive maps
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gd :Gdiff<CR>

" Disable search highlighting on <Return>
nnoremap <CR> :noh<CR><CR> "

nmap <F4> :TagbarToggle<CR>
nmap <F3> :NERDTreeToggle<CR>

noremap <up> :call PrevErrorWrap()<CR>
noremap <down> :call NextErrorWrap()<CR>

" ----------------------------------------------------------------------------
" reading and writing files
" ----------------------------------------------------------------------------
set nobackup                    " do not keep a backup file, use versions instead
set nowritebackup
set modeline                    " use vim-directives in files

" ----------------------------------------------------------------------------
" the swap file
" ----------------------------------------------------------------------------
set noswapfile                  " disable swap file

" ----------------------------------------------------------------------------
" command line editing
" ----------------------------------------------------------------------------
set undofile
set undodir=~/.vimundo
set wildignore+=*.mp3,*.MP3,*.ogg,*.mp4,*.wav,*.avi,*.AVI,*.wmv,*.m4a,*.mkv,*.png.*.jpg,*.jpeg,*.pdf

" ----------------------------------------------------------------------------
" running make and jumping to errors
" ----------------------------------------------------------------------------
function! NextErrorWrap()
	:let v:errmsg = ""
	silent! lnext
	:if v:errmsg != ""
		:ll 1		" Jump to first error when last is reached
	:endif
endfunction

function! PrevErrorWrap()
	:let v:errmsg = ""
	silent! lprev
	:if v:errmsg != ""
		:llast		" Jump to last error when first is reached
	:endif
endfunction

" ----------------------------------------------------------------------------
" Plugin settings
" ----------------------------------------------------------------------------

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 0
let g:syntastic_loc_list_height = 4

" Powerline
let g:Powerline_symbols = 'fancy'

" NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.egg-info$']

" Supertab
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabLongestHighlight=1

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
" let g:UltiSnipsJumpBackwardTrigger="<tab>"

" CtrlP
let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_working_path_mode = 'c' " Make CTRLP's starting directory the dir of current file

highlight clear SignColumn
let g:gitgutter_enabled = 1

" ----------------------------------------------------------------------------
" Misc
" ----------------------------------------------------------------------------
com! W :w !sudo tee %			" use :W to force saving a file

" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Display preview at bottom
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


