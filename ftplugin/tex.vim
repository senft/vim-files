set nocursorline

set formatoptions=tcq
set textwidth=95

set spell
set spelllang=en_us
syntax spell notoplevel

"noremap <leader>r :!pdflatex "%"<CR>
"noremap <leader>v :!xdg-open "%:r.pdf"&<CR><CR>

noremap <leader>r :Latexmk<CR>
noremap <leader>v :LatexView<CR>

noremap <c-g> :LatexTOC<CR>

" add ability to surround with tex command to surround.vim
"let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

"nnoremap <C-b> ysiwc textbf<CR>
"nnoremap <C-e> ysiwc emph<CR>
"nnoremap <C-t> ysiwc texttt<CR>
"vnoremap <C-b> Sc textbf<CR>
"vnoremap <C-e> Sc emph<CR>
"vnoremap <C-t> Sc texttt<CR>

" let g:SuperTabDefaultCompletionType="<c-x><c-o>"

let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_split_width = 40
let g:LatexBox_Folding=1

imap ]] <Plug>LatexCloseCurEnv
imap <buffer> [[     \begin{
imap <buffer> ]]     <Plug>LatexCloseCurEnv
nmap <buffer> <F5>   <Plug>LatexChangeEnv
vmap <buffer> <F6>   <Plug>LatexEnvWrapSelection
vmap <buffer> <F7>   <Plug>LatexWrapSelection
