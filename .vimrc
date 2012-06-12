set nocompatible

call pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on
set encoding=utf-8

"" Backups
set nobackup        " do not keep a backup file, use versions instead
set nowritebackup
set noswapfile      " (additionally disable swap files)

set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set number          " display line numbers
set showmode

set modeline        " use vim-directives in files
set cursorline

set laststatus=2

set tabstop=4       " a tab is 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set guioptions-=T   " remove toolbar
set guioptions-=r   " remove right-hand scroll-bar
set guioptions-=e   " remove tabbar
set guifont=Envy\ Code\ R\ 10
set mouse=a

color badwolf

" Press Space to toggle hilighting (after search)
:nnoremap <Space> :set hlsearch!<CR>

" taglist
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Sort_Type = "name"
let Tlist_WinWidth = 40
let Tlist_Close_On_Select = 1
let Tlist_Show_One_File = 1
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
nnoremap <silent> <F4> :TlistToggle<CR>

nnoremap <C-t> :CommandT<CR>

" Toggle paste mode with F2
nnoremap <F12> :set invpaste paste?<CR>

" Move between windows with crtl+{hjkl}
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Arrow keys for buffer movement
noremap <left> :bp!<CR>
noremap <right> :bn!<CR>

"Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabMappingForward='<tab>'

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"

" Restore cursor position from previously edited files
function! ResCur()
  if line("'\"") <= line("$")
      if filereadable(expand('%:p'))
        normal! g`"
        return 1
      endif
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
