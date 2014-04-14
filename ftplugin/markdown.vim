if has("gui_running")
    setlocal background=light
    setlocal nonu
    setlocal laststatus=0
    colorscheme default
    setlocal foldcolumn=12
    setlocal linespace=8
    setlocal guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
    setlocal tw=80

    setlocal nonumber
    setlocal norelativenumber

    setlocal so=999

    hi FoldColumn guibg=white
    hi Normal guibg=gray95
    hi NonText guifg=gray95
    hi FoldColumn guibg=gray95
    hi CursorLine guibg=gray90
    hi Title gui=bold guifg=gray25
    hi MarkdownHeadingDelimiter gui=bold guifg=gray25
    hi htmlSpecialChar guifg=black
    hi markdownBold gui=bold guifg=gray25
    hi markdownItalic guifg=gray25 gui=underline
    hi markdownUrl guifg=#2fb3a6
    hi markdownAutomaticLink guifg=#2fb3a6
    hi markdownLinkText guifg=#317849
    hi markdownUrlTitle guifg=#317849
    hi markdownBlockquote guifg=#317849 gui=bold
    hi markdownId guifg=#2fb3a6
    hi markdownIdDeclaration guifg=#317849 gui=bold
    hi markdownListMarker guifg=#317849
    highlight Cursor guibg=#15abdd

    "if !exists('g:markdown_fullscreen')
    "	let g:markdown_fullscreen = 1
    "	:silent !i3-msg fullscreen
    "endif

    ":nnoremap j jzz
    ":nnoremap k kzz
endif

" fold region for headings
syn region mkdHeaderFold
    \ start="^\s*\z(#\+\)"
    \ skip="^\s*\z1#\+"
    \ end="^\(\s*#\)\@="
    \ fold contains=TOP

syn sync fromstart
setlocal foldmethod=syntax
