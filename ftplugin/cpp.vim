set makeprg=g++\ %

map <Leader>d <C-]>

let g:syntastic_cpp_config_file = '.clang_complete'

let g:clang_use_library = 1
let g:clang_close_preview = 1
let g:clang_auto_select = 1

let g:clang_hl_errors = 1
let g:clang_periodic_quickfix = 1
let g:clang_complete_copen = 1

let g:clang_complete_macros=1
let g:clang_complete_patterns=1

let g:clang_snippets = 1

"let g:clang_snippets_engine = 'ultisnips'

"set conceallevel=2
"set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'
let g:clang_trailing_placeholder=1

" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone,longest

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<C-X><C-U>'
"let g:SuperTabDefaultCompletionType='context'
