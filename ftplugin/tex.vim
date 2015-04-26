setlocal nocursorline
setlocal formatoptions=tcq
setlocal textwidth=95
setlocal spell
setlocal spelllang=en_us
syntax spell notoplevel

let g:ycm_semantic_triggers = {
\  'tex'  : ['{', '\', ':'],
\ }

noremap <buffer> <leader>r :Latexmk<CR>
noremap <buffer> <leader>R :Latexmk!<CR>
noremap <buffer> <leader>v :LatexView<CR>

noremap <buffer> <leader>ls :LatexmkStatus<CR>
noremap <buffer> <leader>lx :LatexmkStop<CR>
noremap <buffer> <leader>lc :LatexmkClean<CR>
noremap <buffer> <leader>le :LatexErrors<CR>

" noremap <buffer> <c-g> :LatexTOCToggle<CR>
noremap <F4> :LatexTOCToggle<CR>

let g:LatexBox_custom_indent = 0
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_split_width = 40
let g:LatexBox_Folding = 1
let g:LatexBox_fold_envs = 1 " dont fold envs only sections

imap ]] <Plug>LatexCloseCurEnv
imap <buffer> [[     \begin{
imap <buffer> ]]     <Plug>LatexCloseCurEnv
nmap <buffer> <F5>   <Plug>LatexChangeEnv
vmap <buffer> <F6>   <Plug>LatexEnvWrapSelection
vmap <buffer> <F7>   <Plug>LatexWrapSelection

imap <buffer> <F8>   begin<c-j>
