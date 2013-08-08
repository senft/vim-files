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
