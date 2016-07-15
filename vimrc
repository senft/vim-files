" Plugins {{{
call plug#begin('~/.vim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'benekastah/neomake'

" Look
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
Plug 'haya14busa/incsearch.vim', { 'on': ['<Plug>(incsearch-forward)', '<Plug>(incsearch-backward)'] }
Plug 'unblevable/quick-scope'

" Text editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary' ", { 'on': ['<Plug>(CommentaryLine)', '<Plug>(Commentary)'] }
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Interface
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux', { 'on': ['VimuxPromptCommand'] }
Plug 'majutsushi/tagbar'
Plug 'kopischke/vim-stay'
Plug 'mileszs/ack.vim', { 'on': ['Ack'] }
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-obsession'

" Language specific
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'], 'on': ['A'] }
Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': ['latex', 'tex', 'plaintex'] }
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp', 'python', 'tex'], 'do': 'python2 install.py --clang-completer --system-libclang --system-boost' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

call plug#end()

" }}}
" Options {{{

" ----------------------------------------------------------------------------
" Syntax highlighting
" ----------------------------------------------------------------------------
syntax on
filetype plugin on
filetype plugin indent on

" let g:hybrid_reduced_contrast = 0
set background=dark
" let g:hybrid_custom_term_colors = 1
color hybrid

" Don't display a tilde as LineNumber for empty lines
highlight NonText ctermfg=233

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

set list
set listchars=tab:\ \ ,trail:·

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
set omnifunc=syntaxcomplete#Complete

set cursorline                  " highlight the screen line of the cursor

set number                       " display line numbers
"set relativenumber              " display relative line numbers

set wrap
set so=1                        " Keep cursor away from edges of screen.

set mouse=nicr                  " mouse click does not enter visual mode

set ttyfast

set splitbelow
set splitright

" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
set guioptions-=T               " remove toolbar
set guioptions-=r               " remove right-hand scroll-bar
set guioptions-=e               " remove tabbar
set guioptions-=m                " remove menu bar
set guifont=Source\ Code\ Pro\ for\ Powerline\ 8

" ----------------------------------------------------------------------------
" Clipboard
" ----------------------------------------------------------------------------
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
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
" Plugin settings {{{

" Vimwiki
let g:vimwiki_list = [{'path':'/home/jln/Dropbox/wiki', 'syntax': 'markdown'}]

" Always show sign column
let g:gitgutter_sign_column_always=1

" Neomake
let g:neomake_error_sign = { 'text': '✘', 'texthl': 'ErrorMsg' }
let g:neomake_warning_sign = { 'texthl': 'CursorLineNr'}

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=0
let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list= 2 " When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically
let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '☢'
let g:syntastic_style_warning_symbol = '≈'

highlight clear SignColumn
highlight SyntasticErrorSign ctermbg=none ctermfg=161 cterm=bold
highlight SyntasticWarningSign ctermbg=none

" Tagbar
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.egg-info$']

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsEditSplit="horizontal"

" CtrlP
let g:ctrlp_open_multiple_files = 'ij'
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore={
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(png|jpg|gif|jpeg|pdf|so|dll|class|pyc|o)$',
    \ }
let g:ctrlp_extensions = ['funky']
let g:ctrlp_show_hidden = 1

let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

" Gitgutter
let g:gitgutter_enabled=1
let g:gitgutter_eager=0
let g:gitgutter_realtime=0
" let g:gitgutter_highlight_lines=0

let g:gitgutter_sign_added = "＋"
let g:gitgutter_sign_removed = "－"
let g:gitgutter_sign_modified = "＊"

highlight SignColumn ctermbg=233

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_min_count=2
let g:airline_theme='hybridline'
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=1
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

    " \ [ 'b', 'c'],
let g:airline#extensions#default#layout = [
    \ [ 'c'],
    \ [ 'x', 'y', 'warning', 'z' ]
    \ ]

let g:airline_section_z = '%{g:airline_symbols.linenr} %l/%L :%3c'

" YouCompleteMe
let g:ycm_extra_conf_globlist = ['~/Code/*']
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_always_populate_location_list = 1

" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1

" ack.vim
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case"

" quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" }}}
" Commands & Autocommands {{{

"  Keep vim from changing the window position when switching buffers
if v:version >= 700
    au BufLeave * let b:winview=winsaveview()
    au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" use :W to force saving a file
com! W :w !sudo tee %

function! Spaces()
    norm! mp
    silent! %s/\t/    /g " Replace tabs with spaces
    silent! %s/\s\+$//   " Remove trailing spaces
    norm! `p
endfunction
com! -bar Spaces call Spaces()

" "Custom" filetpes
au BufRead,BufNewFile *.md setlocal filetype=markdown

" Run neomake on every write
autocmd! BufWritePost * Neomake

iab <buffer> -> →
" iab <buffer> -> ⮕
" iab <buffer> -> 🡒
" iab <buffer> -> 🡢
" iab <buffer> -> 🡪
" iab <buffer> -> 🡲
" iab <buffer> -> 🡺

" }}}
" Mappings {{{

let mapleader=","

" Dont insert newline when accepting completion with <enter>
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

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

nnoremap <leader>w :w<CR>

" Resize Windows with arrow keys
noremap <up> 2<c-w>+
noremap <down> 2<c-w>-
noremap <left> 3<c-w><
noremap <right> 3<c-w>>

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Surround current char with spaces
noremap S i <esc>2li <esc>h

" Folding
nnoremap <space> za
vnoremap <space> zf

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Center search results
nnoremap n nzz
nnoremap N Nzz

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Reselect visual block after increment/decrement
vnoremap <c-a> <c-a>gv
vnoremap <c-x> <c-x>gv

" Open splits
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Close buffer
nnoremap <C-q> :Bclose<CR>

" Format the current paragraph (or selection)
vmap Q gq
nmap Q mpgqap`p

" Make Y consistent with C and D (copy until end of line)
nnoremap Y y$

" Toggle search highlighting
nnoremap <Leader><Space> :noh<CR>

" Exit insert mode with jk
imap jk <Esc>

nmap <F4> :TagbarToggle<CR>
nmap <F3> :call OpenRanger()<CR>


" nnoremap <C-g> :CtrlPFunky<CR>
" nnoremap <C-t> :CtrlPBuffer<CR>
" nnoremap <C-m> :CtrlPMark<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-t> :Buffers<CR>
nnoremap <C-g> :BLines<CR>

noremap <Leader>a :Ack!<cr>
noremap <Leader>A :Ack<space>

noremap <Leader>t :Ack! todo<cr>
noremap <Leader>T :Ack! todo %<cr>

nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk
nmap <Leader>hp <Plug>GitGutterPreviewHunk

map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vi :VimuxInspectRunner<CR>

" incsearch.vim (incrementally highlights all pattern matches)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" }}}
" vim:fdm=marker
