" vim:fdm=marker

" Pathogen {{{

let g:pathogen_disabled = []

filetype off
call pathogen#infect()
call pathogen#helptags()

" }}}
" Options {{{

" ----------------------------------------------------------------------------
" Syntax highlighting
" ----------------------------------------------------------------------------
syntax on
filetype plugin on
filetype plugin indent on

color molokai
highlight LineNR ctermbg=233 ctermfg=238

" ----------------------------------------------------------------------------
" Searching
" ----------------------------------------------------------------------------
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ----------------------------------------------------------------------------
" Tabs and indenting
" ----------------------------------------------------------------------------
set expandtab
set tabstop=4                   " a tab is 4 spaces
set shiftwidth=4
set softtabstop=4
set smartindent

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
set laststatus=2                " always display statusbar
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands

set showmode
set hidden

set previewheight=20            " maximum height for preview window
set pumheight=20                " Limit popup menu height

set wildmenu                    " visual autocomplete for command menu
set completeopt=menu,longest,menuone

set cursorline                    " highlight the screen line of the cursor

set number                      " display line numbers
set relativenumber              " display relative line numbers
"set nowrap
"set so=10                       " Keep cursor away from edges of screen.

set mouse=nicr                    " mouse click does not enter visual mode

set ttyfast

" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
set guioptions-=T               " remove toolbar
set guioptions-=r               " remove right-hand scroll-bar
set guioptions-=e               " remove tabbar
set guioptions-=m                " remove menu bar
set guifont=Tamzen\ 9

" ----------------------------------------------------------------------------
" Clipboard
" ----------------------------------------------------------------------------
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" ----------------------------------------------------------------------------
" Folding
" ----------------------------------------------------------------------------
"set nofoldenable                " disable folding
set foldnestmax=2

" ----------------------------------------------------------------------------
" Files
" ----------------------------------------------------------------------------
set encoding=utf-8
set nobackup                    " do not keep a backup file, use versions instead
set nowritebackup
set modeline                    " use vim-directives in files
set noswapfile                  " disable swap file
set undofile
set undodir=~/.vimundo
"set wildignore+=*.mp3,*.MP3,*.ogg,*.mp4,*.wav,*.avi,*.AVI,*.wmv,*.m4a,*.mkv,*.png.*.jpg,*.jpeg,*.pdf

" }}}
" Mappings {{{

let mapleader=","

" indent code
nnoremap <leader>i gg=G<C-o><C-o>

" Goto "definition"
map <Leader>d <C-]>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>

" Move between windows with CRTL+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Buffer movement
noremap <silent> H :bp<CR>
noremap <silent> L :bn<CR>

nnoremap <c-s> :w<CR>

" Resize Windows with arrow keys
noremap <up> 2<c-w>+
noremap <down> 2<c-w>-
noremap <left> 3<c-w><
noremap <right> 3<c-w>>

" Surround current char with spaces
noremap S i <esc>2li <esc>h

" Folding
nnoremap <space> za
vnoremap <space> zf

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

"nnoremap n nzz
"nnoremap N Nzz

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Splits
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q mpgqap`p

" Make Y consistent with C and D
nnoremap Y y$

" Fugitive maps
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>

" Toggle search highlighting
nnoremap <Leader><Space> :noh<CR>

nmap <F3> :NERDTreeToggle<CR>

nnoremap <Leader>u :GundoToggle<CR>

nnoremap <C-g> :CtrlPFunky<CR>
nnoremap <C-t> :CtrlPBuffer<CR>

imap jj <Esc>

noremap <Leader>a :Ack!<cr>
noremap <Leader>A :Ack

nnoremap <C-q> :bd<CR>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterRevertHunk

map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vi :VimuxInspectRunner<CR>

" }}}
" Plugin settings {{{

" Tagbar
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list= 2 " When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'

highlight clear SignColumn
highlight SyntasticErrorSign ctermbg=none ctermfg=161 cterm=bold
highlight SyntasticWarningSign ctermbg=none

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.egg-info$']

" Supertab
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabLongestHighlight=1
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabContextDefaultCompletionType="<c-n>"

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsEditSplit="horizontal"

" CtrlP
let g:ctrlp_open_multiple_files = 'ij'
"let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore={
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(png|jpg|gif|jpeg|pdf|so|dll|class|pyc|o)$',
    \ }
let g:ctrlp_extensions = ['funky']
let g:ctrlp_show_hidden = 1

" Minibufexpl
let g:miniBufExplTabWrap=1
let g:miniBufExplStatusLineText=""

" Gitgutter
let g:gitgutter_enabled=1
let g:gitgutter_eager=0
highlight SignColumn ctermbg=233

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline_powerline_fonts=1
let g:airline_theme="powerlineish"
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c'],
    \ [ 'x', 'y', 'warning', 'z' ]
    \ ]

let g:airline_section_z = '%{g:airline_symbols.linenr} %l/%L :%3c'

" Gundo
let g:gundo_close_on_revert=1
let g:gundo_width=60
let g:gundo_preview_height=40

" easymotion
"let g:EasyMotion_leader_key = '<leader>'

" YouCompleteMe
let g:ycm_extra_conf_globlist = ['~/Code/*']
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_always_populate_location_list = 1

" vimux
let g:VimuxOrientation = "v"
let g:VimuxHeight = "40"

" }}}
" Commands & Autocommands {{{

"  Keep vim from changing the window position when switching buffers
if v:version >= 700
    au BufLeave * let b:winview=winsaveview()
    au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" use :W to force saving a file
com! W :w !sudo tee %

" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

function! Spaces()
    norm! mp
    silent! %s/\t/    /g " Replace tabs with spaces
    silent! %s/\s\+$//   " Remove trailing spaces
    norm! `p
endfunction
com! -bar Spaces call Spaces()

" Automatically load and save folds
"au BufWinLeave *.* mkview
"au BufWinEnter *.* silent loadview
"au BufWinLeave .* mkview
"au BufWinEnter .* silent loadview

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

au bufunload * silent mkview
au bufread * silent loadview

" }}}
