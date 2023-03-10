set background=dark

" Necessary variables are initialized.
let s:termguicolors = has('termguicolors') ? 1 : 0
let s:gui_running = has('gui_running') ? 1 : 0

" The script ends if the theme is not supported.
if !(s:termguicolors && &termguicolors) && &t_Co != 256 &&
            \ !s:gui_running && !has('syntax')
    finish
endif

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "abyss"

" Attributes: {{{
let attrs = abyss#getAttributes()

let s:attr_bold = attrs.attr_bold
let s:attr_italic = attrs.attr_italic
let s:attr_undercurl = attrs.attr_undercurl
let s:attr_underline = attrs.attr_underline
let s:attr_none = attrs.attr_none
" }}}

" SP: {{{
let sp = abyss#getSP()

let s:sp_none = sp.sp_none
" }}}

" Config: {{{
" -- Italic
let g:abyss_italic = get(g:, "abyss_italic", 0) " disabled per default (0)
let s:is_italic_enabled = (g:abyss_italic == 0) ? get(s:, "attr_none") : get(s:, "attr_italic")

" -- Italic comments
let g:abyss_italic_comments = get(g:, "abyss_italic_comments", 1) " enabled per default (1)
let s:is_italic_comments_enabled = (g:abyss_italic_comments == 0) ? get(s:, "attr_none") : get(s:, "attr_italic")

" -- Bold
let g:abyss_bold = get(g:, "abyss_bold", 0)
let s:is_bold_enabled = (g:abyss_bold == 0) ? get(s:, "attr_none") : get(s:, "attr_bold")

" -- Underline
let g:abyss_underline = get(g:, "abyss_underline", 0)
let s:is_underline_enabled = (g:abyss_underline == 0) ? get(s:, "attr_none") : get(s:, "attr_underline")

" -- Undercurl
let g:abyss_undercurl = get(g:, "abyss_undercurl", 0)
let s:is_undercurl_enabled = (g:abyss_undercurl == 0) ? get(s:, "attr_none") : get(s:, "attr_undercurl")

" -- Invisible background
let g:abyss_invisible_background = get(g:, "abyss_invisible_background", 0)
let s:is_invisible_background_enabled = (g:abyss_invisible_background == 0) ? 0 : 1
" }}}

" Colors: {{{
let colors = abyss#getSchemeColors()

let s:bg = colors.bg
let s:fg = colors.fg

let s:darkgreen = colors.darkgreen
let s:green = colors.green
let s:darkblue = colors.darkblue
let s:purple = colors.purple
let s:pink = colors.pink

let s:lightgrey = colors.lightgrey
let s:lowgrey = colors.lowgrey
let s:darkgrey = colors.darkgrey
let s:midblue = colors.midblue
let s:shinyblue = colors.shinyblue

let s:red = colors.red
let s:darkred = colors.darkred
let s:orange = colors.orange
let s:yellow = colors.yellow
let s:heavyyellow = colors.heavyyellow

let s:white = colors.white
let s:black = colors.black

let s:none = colors.none
" }}}

if version >= 700
    call abyss#highlighter("Cursor", s:attr_none, s:midblue, s:darkred, s:sp_none)
    call abyss#highlighter("CursorLine", s:attr_none, s:darkblue, s:none, s:sp_none)
    call abyss#highlighter("CursorLineNr", s:attr_none, s:bg, s:fg, s:sp_none)
    highlight! link CursorColumn CursorLine
    highlight! link CursorLineFold CursorLine

    call abyss#highlighter("ColorColumn", s:attr_none, s:darkred, s:none, s:sp_none)

    call abyss#highlighter("TabLine", s:attr_none, s:lightgrey, s:bg, s:sp_none)
    call abyss#highlighter("TabLineFill", s:attr_none, s:bg, s:bg, s:sp_none)
    call abyss#highlighter("TabLineSel", s:attr_none, s:white, s:bg, s:sp_none)

    " -- Pop up (autocompletion) style
    call abyss#highlighter("Pmenu", s:attr_none, s:bg, s:fg, s:sp_none)
    call abyss#highlighter("PmenuSbar", s:attr_none, s:bg, s:bg, s:sp_none)
    call abyss#highlighter("PmenuSel", s:attr_none, s:fg, s:bg, s:sp_none)
    call abyss#highlighter("PmenuThumb", s:attr_none, s:fg, s:none, s:sp_none)
endif

" Editor Highlighting: {{{
call abyss#highlighter("Normal", s:attr_none, s:bg, s:fg, s:sp_none)
call abyss#highlighter("Question", s:attr_none, s:none, s:yellow, s:sp_none)
call abyss#highlighter("Title", s:attr_italic, s:none, s:heavyyellow, s:sp_none)

highlight! link NonText Normal
highlight! link SignColumn Normal

call abyss#highlighter("LineNr", s:attr_none, s:bg, s:lowgrey, s:sp_none)

call abyss#highlighter("StatusLine", s:attr_none, s:bg, s:fg, s:sp_none)
call abyss#highlighter("StatusLineNC", s:attr_none, s:bg, s:darkgrey, s:sp_none)

call abyss#highlighter("VertSplit", s:attr_none, s:bg, s:fg, s:sp_none)

call abyss#highlighter("Directory", s:attr_none, s:none, s:heavyyellow, s:sp_none)

call abyss#highlighter("ErrorMsg", s:attr_bold, s:darkred, s:red, s:sp_none)
call abyss#highlighter("WarningMsg", s:attr_bold, s:none, s:heavyyellow, s:sp_none)

call abyss#highlighter("Search", s:attr_none, s:darkred, s:none, s:sp_none)
highlight! link IncSearch Search

call abyss#highlighter("Visual", s:attr_none, s:darkred, s:none, s:sp_none)

call abyss#highlighter("Folded", s:attr_none, s:lowgrey, s:lightgrey, s:sp_none)

call abyss#highlighter("ModeMsg", s:attr_bold, s:none, s:heavyyellow, s:sp_none)
call abyss#highlighter("MoreMsg", s:attr_bold, s:none, s:heavyyellow, s:sp_none)

call abyss#highlighter("MatchParen", s:attr_underline, s:none, s:none, s:sp_none)

call abyss#highlighter("SpecialKey", s:attr_none, s:none, s:pink, s:sp_none)

call abyss#highlighter("SpellBad", s:attr_undercurl, s:red, s:none, s:sp_none)
call abyss#highlighter("SpellRare", s:attr_undercurl, s:yellow, s:none, s:sp_none)
call abyss#highlighter("SpellCap", s:attr_undercurl, s:yellow, s:none, s:sp_none)
call abyss#highlighter("SpellLocal", s:attr_undercurl, s:orange, s:none, s:sp_none)

call abyss#highlighter("StatusLineTerm", s:attr_none, s:black, s:none, s:sp_none)
call abyss#highlighter("StatusLineTermNC", s:attr_none, s:black, s:lowgrey, s:sp_none)

call abyss#highlighter("QuickFixLine", s:attr_none, s:none, s:darkred, s:sp_none)

call abyss#highlighter("WildMenu", s:attr_none, s:bg, s:white, s:sp_none)

" -- Diffs
call abyss#highlighter("DiffAdd", s:attr_none, s:none, s:darkgreen, s:sp_none)
call abyss#highlighter("DiffChange", s:attr_none, s:none, s:yellow, s:sp_none)
call abyss#highlighter("DiffDelete", s:attr_none, s:none, s:darkred, s:sp_none)

highlight! link GitGutterAdd DiffAdd
highlight! link GitGutterChange DiffChange
highlight! link GitGutterDelete DiffDelete
" }}}

" Invisible background: {{{
if s:is_invisible_background_enabled == 1
    call abyss#highlighter("Normal", s:attr_none, s:none, s:fg, s:sp_none)
    call abyss#highlighter("LineNr", s:attr_none, s:none, s:lowgrey, s:sp_none)
    call abyss#highlighter("CursorLineNr", s:attr_none, s:none, s:fg, s:sp_none)
    call abyss#highlighter("VertSplit", s:attr_none, s:none, s:fg, s:sp_none)
    call abyss#highlighter("StatusLine", s:attr_none, s:none, s:fg, s:sp_none)
    call abyss#highlighter("StatusLineNC", s:attr_none, s:none, s:lightgrey, s:sp_none)
endif
" }}}

" Syntax Highlighting: {{{
call abyss#highlighter("String", s:attr_none, s:none, s:darkgreen, s:sp_none)
call abyss#highlighter("Constant", s:attr_none, s:none, s:darkgreen, s:sp_none)
call abyss#highlighter("Comment", s:is_italic_comments_enabled, s:none, s:midblue, s:sp_none)

call abyss#highlighter("Number", s:attr_none, s:none, s:pink, s:sp_none)
call abyss#highlighter("Float", s:attr_none, s:none, s:pink, s:sp_none)
call abyss#highlighter("Boolean", s:attr_none, s:none, s:pink, s:sp_none)

call abyss#highlighter("Special", s:attr_none, s:none, s:darkgrey, s:sp_none)
call abyss#highlighter("PreProc", s:attr_none, s:none, s:darkgrey, s:sp_none)
call abyss#highlighter("Statement", s:attr_none, s:none, s:darkgrey, s:sp_none)

call abyss#highlighter("Identifier", s:is_italic_enabled, s:none, s:purple, s:sp_none)
call abyss#highlighter("Type", s:attr_none, s:none, s:fg, s:sp_none)

call abyss#highlighter("Todo", s:is_bold_enabled, s:darkred, s:heavyyellow, s:sp_none)
call abyss#highlighter("Error", s:is_undercurl_enabled, s:none, s:red, s:sp_none)
" }}}
