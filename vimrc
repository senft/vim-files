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
set nowrap

" ----------------------------------------------------------------------------
" syntax, highlighting and spelling
" ----------------------------------------------------------------------------
syntax on
filetype plugin on
filetype plugin indent on

set cursorline					" highlight the screen line of the cursor

color molokai

" ----------------------------------------------------------------------------
" multiple windows
" ----------------------------------------------------------------------------
set laststatus=2				" always display statusbar
set previewheight=20			" maximum height for preview window
set hidden

" ----------------------------------------------------------------------------
" terminal
" ----------------------------------------------------------------------------
set ttyfast

if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

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
set guioptions-=m				" remove menu bar
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10

" ----------------------------------------------------------------------------
" printing
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" messages and info
" ----------------------------------------------------------------------------
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set showmode

set pumheight=20                " Limit popup menu height

" ----------------------------------------------------------------------------
" selecting text
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" editing text
" ----------------------------------------------------------------------------
set wildmenu                    " visual autocomplete for command menu
set completeopt=menu,menuone,longest,preview

" ----------------------------------------------------------------------------
" tabs and indenting
" ----------------------------------------------------------------------------
set expandtab
set tabstop=4                   " a tab is 4 spaces
set shiftwidth=4
set softtabstop=4
set smartindent

" ----------------------------------------------------------------------------
" folding
" ----------------------------------------------------------------------------
set nofoldenable				" disable folding

" ----------------------------------------------------------------------------
" mapping
" ----------------------------------------------------------------------------
let mapleader=","

" Goto "definition"
map <Leader>d <C-]>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>

" We have to remap vim-latex's mapping to <C-j> in order to use it...
"nnoremap <C-space> <Plug>IMAP_JumpForward

" Move between windows with CRTL+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Buffer movement
"noremap <left> :bp<CR>
"noremap <right> :bn<CR>
noremap H :bp<CR>
noremap L :bn<CR>

" Resize Windows with arrow keys
noremap <up> 2<c-w>+
noremap <down> 2<c-w>-
noremap <left> 3<c-w><
noremap <right> 3<c-w>>

"noremap <space> i <esc>l " insert one space
noremap <space> i <esc>2li <esc>h " surround current char with spaces

" Folding
"nnoremap <space> za
"vnoremap <space> zf

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

"nnoremap n nzz
"nnoremap N Nzz

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" splits
nnoremap <silent> <leader>v <C-w>v
nnoremap <silent> <leader>h :split<CR>

nnoremap <leader>p o<ESC>p

"Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap
"nmap F gg=G<c-o><c-o>

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" fugitive maps
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gw :Gwrite<CR>
noremap <Leader>gr :Gread<CR>

" Toggle search highlighting
nnoremap <Leader><Space> :noh<CR>

nmap <F3> :NERDTreeToggle<CR>

nnoremap <Leader>u :GundoToggle<CR>

nnoremap <C-g> :CtrlPFunky<CR>

imap jj <Esc>

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
"set wildignore+=*.mp3,*.MP3,*.ogg,*.mp4,*.wav,*.avi,*.AVI,*.wmv,*.m4a,*.mkv,*.png.*.jpg,*.jpeg,*.pdf

" ----------------------------------------------------------------------------
" Plugin settings
" ----------------------------------------------------------------------------

" Tagbar
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list= 2 " When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠∆'
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
"let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<s-tab>"

" CtrlP
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore={
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(png|jpg|gif|jpeg|pdf|so|dll|class|pyc)$',
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
"let g:airline_left_sep=''
"let g:airline_right_sep=''

" Gundo
let g:gundo_close_on_revert=1
let g:gundo_width=60
let g:gundo_preview_height=40

" easymotion
let g:EasyMotion_leader_key = '<leader>'

" ----------------------------------------------------------------------------
" Misc
" ----------------------------------------------------------------------------
"  Keep vim from changing the window position when switching buffers
if v:version >= 700
    au BufLeave * let b:winview=winsaveview()
    au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" use :W to force saving a file
com! W :w !sudo tee %

au BufRead,BufNewFile *.md set filetype=markdown

" Restore cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

hi MBEVisibleActiveNormal ctermfg=161 cterm=bold
hi MBEVisibleChangedActive ctermfg=161 cterm=bold
hi MBEVisibleChanged ctermfg=81 cterm=bold
hi MBEVisibleNormal ctermfg=81 cterm=bold
hi MBEChanged ctermfg=59
hi MBENormal ctermfg=59

" Keep cursor away from edges of screen.
set so=10

" Auto highlight current word when idle
" http://vim.wikia.com/wiki/Auto_highlight_current_word_when_idle
" http://stackoverflow.com/a/1552193
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction
