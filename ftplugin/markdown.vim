setlocal spell

if has("gui_running")
    setlocal background=light
    setlocal nonu
    setlocal noru
    setlocal laststatus=0
    setlocal noshowmode
    colorscheme default
    setlocal nonumber
    setlocal norelativenumber

    " set foldcolum so that the text is centered, get width with :set columns
    setlocal foldcolumn=12
    setlocal linespace=7
    setlocal guifont=Source\ Code\ Pro\ for\ Powerline\ Light\ 10
    setlocal tw=80

    hi FoldColumn guibg=white guifg=white
    hi Normal guibg=white
    hi NonText guifg=gray95
    hi CursorLine guibg=gray95
    hi Title gui=bold guifg=gray25
    hi MarkdownHeadingDelimiter gui=bold guifg=gray25
    hi htmlSpecialChar guifg=black
    hi markdownBold gui=bold guifg=gray25
    hi markdownItalic guifg=gray25 gui=italic
    hi markdownUrl guifg=#2fb3a6
    hi markdownAutomaticLink guifg=#2fb3a6
    hi markdownLinkText guifg=#317849
    hi markdownUrlTitle guifg=#317849
    hi markdownBlockquote guifg=#317849 gui=bold
    hi markdownId guifg=#2fb3a6
    hi markdownIdDeclaration guifg=#317849 gui=bold
    hi markdownListMarker guifg=#317849
    hi Cursor guibg=#15abdd
    hi Search  guibg=wheat
    hi MatchParen gui=bold guibg=wheat
endif

let g:markdown_fold_style = 'nested'

" " fold region for headings
" syn region mkdHeaderFold
"     \ start="^\s*\z(#\+\)"
"     \ skip="^\s*\z1#\+"
"     \ end="^\(\s*#\)\@="
"     \ fold contains=TOP
"
" syn sync fromstart
" setlocal foldmethod=syntax

