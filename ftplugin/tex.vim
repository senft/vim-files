" Very sluggish UI in latex mode
set nocursorline

set formatoptions=tcq
set textwidth=95

let g:Imap_UsePlaceHolders = 0

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "pdflatex"
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf="zathura"
let g:Tex_AutoFolding = 0

let g:Tex_SmartKeyQuote=1

set spell
set spelllang=en_us
syntax spell notoplevel
let g:tex_comment_nospell= 1

let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0

vnoremap <C-b> :s/\%V\(\_.*\)\%V/\\textbf{\1}/g<CR>:noh<CR>
vnoremap <C-e> :s/\%V\(\_.*\)\%V/\\emph{\1}/g<CR>:noh<CR>
vnoremap <C-t> :s/\%V\(\_.*\)\%V/\\texttt{\1}/g<CR>:noh<CR>

noremap <leader>r :!pdflatex "%"<CR>
noremap <leader>v :!xdg-open "%:r.pdf"&<CR><CR>
