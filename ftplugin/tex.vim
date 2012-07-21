filetype plugin indent on

set formatoptions=tcq
set textwidth=79

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "pdflatex"
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf="evince"
let g:Tex_AutoFolding = 0

let g:Tex_SmartKeyQuote=1

set spell
set spelllang=de,en
syntax spell notoplevel
let g:tex_comment_nospell= 1

let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
