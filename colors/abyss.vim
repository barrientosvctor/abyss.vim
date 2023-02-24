set background=dark

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

" TODO: adaptar categoría 'config' a función abyss#getSchemeColors()

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

" TODO: mejorar condiciones y pasarlas a la función abyss#getSchemeColors()

if version >= 700
    call abyss#highlighter("Cursor", s:attr_none, s:midblue, s:darkred, s:sp_none)
"    call abyss#highlighter("CursorLine", "", s:darkblue, "", "", "", "")
"    call abyss#highlighter("CursorLineNr", s:lightgrey, s:bg, "", "", "", "")
"
"    call abyss#highlighter("ColorColumn", "", s:darkred, "", "", "", "")
"
"    call abyss#highlighter("TabLine", s:lightgrey, s:bg, "", "", "", "")
"    call abyss#highlighter("TabLineFill", s:bg, s:bg, "", "", "", "")
"    call abyss#highlighter("TabLineSel", s:white, s:bg, "", "", "", "")
"
"    " -- Pop up (autocompletion) style
"    call abyss#highlighter("Pmenu", s:fg, s:bg, "", "", "", "")
"    call abyss#highlighter("PmenuSbar", s:fg, s:bg, "", "", "", "")
"    call abyss#highlighter("PmenuSel", s:bg, s:fg, "", "", "", "")
"    call abyss#highlighter("PmenuThumb", s:heavyyellow, s:darkred, "", "", "", "")

"    call abyss#highlighter("Cursor", s:midblue, s:darkred, "", "", "", "")
"    call abyss#highlighter("CursorLine", "", s:darkblue, "", "", "", "")
"    call abyss#highlighter("CursorLineNr", s:lightgrey, s:bg, "", "", "", "")
"
"    call abyss#highlighter("ColorColumn", "", s:darkred, "", "", "", "")
"
"    call abyss#highlighter("TabLine", s:lightgrey, s:bg, "", "", "", "")
"    call abyss#highlighter("TabLineFill", s:bg, s:bg, "", "", "", "")
"    call abyss#highlighter("TabLineSel", s:white, s:bg, "", "", "", "")
"
"    " -- Pop up (autocompletion) style
"    call abyss#highlighter("Pmenu", s:fg, s:bg, "", "", "", "")
"    call abyss#highlighter("PmenuSbar", s:fg, s:bg, "", "", "", "")
"    call abyss#highlighter("PmenuSel", s:bg, s:fg, "", "", "", "")
"    call abyss#highlighter("PmenuThumb", s:heavyyellow, s:darkred, "", "", "", "")
endif


" TODO: implementar función abyss#highlighter() a los 'editor highlighting'

" Editor Highlighting: {{{
"call abyss#highlighter("Normal", s:bg, s:fg)

"call abyss#highlighter("Normal", s:fg, s:bg, "", "", "", "")
"" call abyss#highlighter("NonText", s:bg, s:bg, "", "", "", "")
""call abyss#highlighter("SignColumn", s:fg, s:bg, "", "", "", "")
"call abyss#highlighter("Question", s:yellow, "", "", "", "", "")
"call abyss#highlighter("Title", s:heavyyellow, "", "", "", "", "")
"
"highlight! link NonText Normal
"highlight! link SignColumn Normal
"
"call abyss#highlighter("LineNr", s:lowgrey, s:bg, "", "", "", "")
"
"call abyss#highlighter("StatusLine", "", s:bg, "", "", "", "")
"call abyss#highlighter("StatusLineNC", "", s:black, "", "", "", "")
"
"call abyss#highlighter("VertSplit", s:bg, s:fg, "", "", "", "")
"
"call abyss#highlighter("Directory", s:heavyyellow, "", "", "", "", "")
"
"call abyss#highlighter("ErrorMsg", s:red, s:none, "", "", "", "")
"call abyss#highlighter("WarningMsg", s:heavyyellow, s:none, "", "", "", "")
"
"call abyss#highlighter("Search", s:black, s:yellow, "", "", "", "")
"call abyss#highlighter("IncSearch", s:black, s:yellow, "", "", "", "")
"
"call abyss#highlighter("Visual", "", s:darkred, "", "", "", "")
"
"call abyss#highlighter("ModeMsg", s:fg, s:none, "", "", "", "")
"call abyss#highlighter("MoreMsg", s:fg, "", "", "", "", "")
"
"call abyss#highlighter("MatchParen", s:heavyyellow, s:darkred, "", "", "", "")
"
"call abyss#highlighter("SpecialKey", s:heavyyellow, "", "", "", "", "")
"
"call abyss#highlighter("SpellBad", s:red, "", "", "", "", "")
"call abyss#highlighter("SpellRare", s:yellow, "", "", "", "", "")
"call abyss#highlighter("SpellCap", s:yellow, "", "", "", "", "")
"call abyss#highlighter("SpellLocal", s:orange, "", "", "", "", "")
"
"call abyss#highlighter("QuickFixLine", "", s:darkred, "", "", "", "")
"
"call abyss#highlighter("WildMenu", s:bg, s:fg, "", "", "", "")
"
"" -- Diffs
"call abyss#highlighter("DiffAdd", "", s:darkgreen, "", "", "", "")
"call abyss#highlighter("DiffChange", "", s:yellow, "", "", "", "")
"call abyss#highlighter("DiffDelete", "", s:darkred, "", "", "", "")
"
"highlight! link GitGutterAdd DiffAdd
"highlight! link GitGutterChange DiffChange
"highlight! link GitGutterDelete DiffDelete
" }}}

" TODO: implementar función abyss#highlighter() a los 'syntax highlighting'

"" Syntax Highlighting: {{{
"call abyss#highlighter("String", s:darkgreen, "", "", "", "", "")
"call abyss#highlighter("Comment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call abyss#highlighter("Number", s:pink, "", "", "", "", "")
"call abyss#highlighter("Float", s:pink, "", "", "", "", "")
"call abyss#highlighter("Boolean", s:pink, "", "", "", "", "")
"call abyss#highlighter("Keyword", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Repeat", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Character", s:lightgrey, "", "", "", "", "")
"call abyss#highlighter("Statement", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("StorageClass", s:fg, "", "", "", "", "")
"call abyss#highlighter("Function", s:yellow, "", "", "", "", "")
"call abyss#highlighter("Label", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Operator", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Exception", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Type", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("Constant", s:fg, "", "", "", "", "")
"call abyss#highlighter("SpecialChar", s:yellow, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("Typedef", s:purple, "", "", "", s:is_italic_enabled, "")
"call abyss#highlighter("Structure", s:purple, "", "", "", "", "")
"call abyss#highlighter("PreProc", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Include", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Define", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Macro", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("PreCondit", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Special", s:pink, "", "", "", "", "")
"call abyss#highlighter("Underlined", s:darkgreen, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("Conceal", "", s:bg, "", "", "", "")
"call abyss#highlighter("Todo", s:heavyyellow, "", "", "", s:is_italic_enabled, "")
"call abyss#highlighter("Tag", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Delimiter", s:midblue, "", "", "", "", "")
"call abyss#highlighter("SpecialComment", s:purple, "", "", "", "", "")
"call abyss#highlighter("Debug", s:darkgrey, "", "", "", "", "")
"call abyss#highlighter("Error", s:red, "", "", "", s:is_undercurl_enabled, "")
"call abyss#highlighter("Ignore", s:darkgrey, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'vim script highlighting'

"" VIM SCRIPT: {{{
"call abyss#highlighter("vimLineComment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call abyss#highlighter("vimCommentTitle", s:heavyyellow, "", "", "", s:is_italic_comments_enabled . s:is_underline_enabled, "")
"call abyss#highlighter("vimCommentTitle", s:heavyyellow, "", "", "", s:is_italic_comments_enabled . s:is_underline_enabled, "")
"
"call abyss#highlighter("vimIsCommand", s:purple, "", "", "", "", "")
"call abyss#highlighter("vimCommand", s:purple, "", "", "", "", "")
"call abyss#highlighter("vimMap", s:purple, "", "", "", "", "")
"call abyss#highlighter("vimUserCmd", s:purple, "", "", "", "", "")
"
"call abyss#highlighter("vimNotFunc", s:fg, "", "", "", "", "")
"call abyss#highlighter("vimFunc", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimUserFunc", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimFuncName", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimFuncBody", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimFunction", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimFuncSID", s:yellow, "", "", "", "", "")
"call abyss#highlighter("vimFuncKey", s:purple, "", "", "", "", "")
"call abyss#highlighter("vimFuncVar", s:shinyblue, "", "", "", s:is_italic_enabled, "")
"
"call abyss#highlighter("vimLet", s:fg, "", "", "", "", "")
"call abyss#highlighter("vimVar", s:shinyblue, "", "", "", s:is_italic_enabled, "")
"
"call abyss#highlighter("vimParenSep", s:fg, "", "", "", "", "")
"call abyss#highlighter("vimOperParen", s:fg, "", "", "", "", "")
"
"call abyss#highlighter("vimString", s:darkgreen, "", "", "", "", "")
"
"call abyss#highlighter("vimFTOption", s:heavyyellow, "", "", "", "", "")
"call abyss#highlighter("vimSynType", s:heavyyellow, "", "", "", "", "")
"call abyss#highlighter("vimExecute", s:heavyyellow, "", "", "", "", "")
"
"call abyss#highlighter("vimOption", s:fg, "", "", "", "", "")
"
"call abyss#highlighter("vimMapMod", s:lowgrey, "", "", "", "", "")
"call abyss#highlighter("vimBracket", s:lowgrey, "", "", "", "", "")
"call abyss#highlighter("vimMapModKey", s:yellow, "", "", "", "", "")
"
"call abyss#highlighter("vimSet", s:fg, "", "", "", "", "")
"call abyss#highlighter("vimSetEqual", s:fg, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'gitcommit highlighting'

"" GITCOMMIT: {{{
"call abyss#highlighter("gitcommitFirstLine", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("gitcommitSummary", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("gitcommitComment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call abyss#highlighter("gitcommitHeader", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call abyss#highlighter("gitcommitBranch", s:pink, "", "", "", "", "")
"call abyss#highlighter("gitcommitOnBranch", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call abyss#highlighter("gitcommitSelectedType", s:yellow, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'editorconfig highlighting'

"" EditorConfig: {{{
"call abyss#highlighter("dosiniHeader", s:lowgrey, "", "", "", "", "")
"call abyss#highlighter("dosiniLabel", s:lowgrey, "", "", "", "", "")
"call abyss#highlighter("dosiniNumber", s:pink, "", "", "", "", "")
"call abyss#highlighter("dosiniValue", s:pink, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'tmux highlighting'

"" TMUX: {{{
"call abyss#highlighter("tmuxCommands", s:purple, "", "", "", "", "")
"call abyss#highlighter("tmuxFlags", s:lowgrey, "", "", "", "", "")
"call abyss#highlighter("tmuxOptions", s:yellow, "", "", "", "", "")
"call abyss#highlighter("tmuxString", s:darkgreen, "", "", "", "", "")
"call abyss#highlighter("tmuxFormatString", s:lightgrey, "", "", "", "", "")
"call abyss#highlighter("tmuxEnums", s:pink, "", "", "", "", "")
"call abyss#highlighter("tmuxNumber", s:pink, "", "", "", "", "")
"" }}}
