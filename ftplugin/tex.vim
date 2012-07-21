filetype plugin indent on

"set spell
"set spelllang=de

set formatoptions=tcq
set textwidth=80

set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = "pdf"
let g:tex_flavor = "pdflatex"
let g:Tex_Folding = 1
let g:Tex_AutoFolding = 0

let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
