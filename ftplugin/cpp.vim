set makeprg=g++\ %

let g:syntastic_cpp_config_file = '.clang_complete'

let g:clang_debug = 0
let g:clang_library_path = "/usr/lib/"
let g:clang_use_library = 1
let g:clang_close_preview = 1
let g:clang_auto_select = 1
let g:clang_hl_errors = 0
let g:clang_periodic_quickfix = 0
let g:clang_complete_copen = 1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_snippets = 1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'
let g:clang_trailing_placeholder=1

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<C-X><C-U>'

" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone,longest
