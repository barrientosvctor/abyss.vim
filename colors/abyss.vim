set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "abyss"

" Attributes: {{{
let attrs = abyss#getAttributes()

let s:bold = attrs.attr_bold
let s:italic = attrs.attr_italic
let s:undercurl = attrs.attr_undercurl
let s:underline = attrs.attr_underline
" }}}

" TODO: adaptar categoría 'config' a función abyss#getSchemeColors()

" Config: {{{
" -- Italic
let g:abyss_italic = get(g:, "abyss_italic", 0)
let s:is_italic_enabled = (g:abyss_italic == 0) ? ["NONE", "NONE"] : get(s:, "italic")

" -- Italic comments
let g:abyss_italic_comments = get(g:, "abyss_italic_comments", 1) " enabled per default
let s:is_italic_comments_enabled = (g:abyss_italic_comments == 0) ? ["NONE", "NONE"] : get(s:, "italic")

" -- Bold
let g:abyss_bold = get(g:, "abyss_bold", 0)
let s:is_bold_enabled = (g:abyss_bold == 0) ? ["NONE", "NONE"] : get(s:, "bold")

" -- Underline
let g:abyss_underline = get(g:, "abyss_underline", 0)
let s:is_underline_enabled = (g:abyss_underline == 0) ? ["NONE", "NONE"] : get(s:, "underline")

" -- Undercurl
let g:abyss_undercurl = get(g:, "abyss_undercurl", 0)
let s:is_undercurl_enabled = (g:abyss_undercurl == 0) ? ["NONE", "NONE"] : get(s:, "undercurl")
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

"let s:bg = "#000c18"
"let s:fg = "#6688cc"
"let s:darkgreen = "#22aa44"
"let s:green = "#44cb46"
"let s:darkblue = "#082050"
"let s:purple = "#9966b8"
"let s:pink = "#f280d0"
"let s:lightgrey = "#80A2B7"
"let s:lowgrey = "#406385"
"let s:darkgrey = "#225588"
"let s:midblue = "#384887"
"let s:shinyblue = "#2277ff"
"let s:red = "#cb4444"
"let s:darkred = "#770811"
"let s:orange = "#FF9900"
"let s:yellow = "#ddbb88"
"let s:heavyyellow = "#FFEEBB"
"let s:black = "#010101"
"let s:white = "#ffffff"
"let s:none = "NONE"
" }}}

" TODO: mejorar condiciones y pasarlas a la función abyss#getSchemeColors()

"if version >= 700
"    call s:hi("Cursor", s:midblue, s:darkred, "", "", "", "")
"    call s:hi("CursorLine", "", s:darkblue, "", "", "", "")
"    call s:hi("CursorLineNr", s:lightgrey, s:bg, "", "", "", "")
"
"    call s:hi("ColorColumn", "", s:darkred, "", "", "", "")
"
"    call s:hi("TabLine", s:lightgrey, s:bg, "", "", "", "")
"    call s:hi("TabLineFill", s:bg, s:bg, "", "", "", "")
"    call s:hi("TabLineSel", s:white, s:bg, "", "", "", "")
"
"    " -- Pop up (autocompletion) style
"    call s:hi("Pmenu", s:fg, s:bg, "", "", "", "")
"    call s:hi("PmenuSbar", s:fg, s:bg, "", "", "", "")
"    call s:hi("PmenuSel", s:bg, s:fg, "", "", "", "")
"    call s:hi("PmenuThumb", s:heavyyellow, s:darkred, "", "", "", "")
"endif


" TODO: implementar función abyss#highlighter() a los 'editor highlighting'

" Editor Highlighting: {{{
"call abyss#highlighter("Normal", s:bg, s:fg)

"call s:hi("Normal", s:fg, s:bg, "", "", "", "")
"" call s:hi("NonText", s:bg, s:bg, "", "", "", "")
""call s:hi("SignColumn", s:fg, s:bg, "", "", "", "")
"call s:hi("Question", s:yellow, "", "", "", "", "")
"call s:hi("Title", s:heavyyellow, "", "", "", "", "")
"
"highlight! link NonText Normal
"highlight! link SignColumn Normal
"
"call s:hi("LineNr", s:lowgrey, s:bg, "", "", "", "")
"
"call s:hi("StatusLine", "", s:bg, "", "", "", "")
"call s:hi("StatusLineNC", "", s:black, "", "", "", "")
"
"call s:hi("VertSplit", s:bg, s:fg, "", "", "", "")
"
"call s:hi("Directory", s:heavyyellow, "", "", "", "", "")
"
"call s:hi("ErrorMsg", s:red, s:none, "", "", "", "")
"call s:hi("WarningMsg", s:heavyyellow, s:none, "", "", "", "")
"
"call s:hi("Search", s:black, s:yellow, "", "", "", "")
"call s:hi("IncSearch", s:black, s:yellow, "", "", "", "")
"
"call s:hi("Visual", "", s:darkred, "", "", "", "")
"
"call s:hi("ModeMsg", s:fg, s:none, "", "", "", "")
"call s:hi("MoreMsg", s:fg, "", "", "", "", "")
"
"call s:hi("MatchParen", s:heavyyellow, s:darkred, "", "", "", "")
"
"call s:hi("SpecialKey", s:heavyyellow, "", "", "", "", "")
"
"call s:hi("SpellBad", s:red, "", "", "", "", "")
"call s:hi("SpellRare", s:yellow, "", "", "", "", "")
"call s:hi("SpellCap", s:yellow, "", "", "", "", "")
"call s:hi("SpellLocal", s:orange, "", "", "", "", "")
"
"call s:hi("QuickFixLine", "", s:darkred, "", "", "", "")
"
"call s:hi("WildMenu", s:bg, s:fg, "", "", "", "")
"
"" -- Diffs
"call s:hi("DiffAdd", "", s:darkgreen, "", "", "", "")
"call s:hi("DiffChange", "", s:yellow, "", "", "", "")
"call s:hi("DiffDelete", "", s:darkred, "", "", "", "")
"
"highlight! link GitGutterAdd DiffAdd
"highlight! link GitGutterChange DiffChange
"highlight! link GitGutterDelete DiffDelete
" }}}

" TODO: implementar función abyss#highlighter() a los 'syntax highlighting'

"" Syntax Highlighting: {{{
"call s:hi("String", s:darkgreen, "", "", "", "", "")
"call s:hi("Comment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call s:hi("Number", s:pink, "", "", "", "", "")
"call s:hi("Float", s:pink, "", "", "", "", "")
"call s:hi("Boolean", s:pink, "", "", "", "", "")
"call s:hi("Keyword", s:darkgrey, "", "", "", "", "")
"call s:hi("Repeat", s:darkgrey, "", "", "", "", "")
"call s:hi("Character", s:lightgrey, "", "", "", "", "")
"call s:hi("Statement", s:darkgrey, "", "", "", "", "")
"call s:hi("StorageClass", s:fg, "", "", "", "", "")
"call s:hi("Function", s:yellow, "", "", "", "", "")
"call s:hi("Label", s:darkgrey, "", "", "", "", "")
"call s:hi("Operator", s:darkgrey, "", "", "", "", "")
"call s:hi("Exception", s:darkgrey, "", "", "", "", "")
"call s:hi("Type", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call s:hi("Constant", s:fg, "", "", "", "", "")
"call s:hi("SpecialChar", s:yellow, "", "", "", s:is_underline_enabled, "")
"call s:hi("Typedef", s:purple, "", "", "", s:is_italic_enabled, "")
"call s:hi("Structure", s:purple, "", "", "", "", "")
"call s:hi("PreProc", s:darkgrey, "", "", "", "", "")
"call s:hi("Include", s:darkgrey, "", "", "", "", "")
"call s:hi("Define", s:darkgrey, "", "", "", "", "")
"call s:hi("Macro", s:darkgrey, "", "", "", "", "")
"call s:hi("PreCondit", s:darkgrey, "", "", "", "", "")
"call s:hi("Special", s:pink, "", "", "", "", "")
"call s:hi("Underlined", s:darkgreen, "", "", "", s:is_underline_enabled, "")
"call s:hi("Conceal", "", s:bg, "", "", "", "")
"call s:hi("Todo", s:heavyyellow, "", "", "", s:is_italic_enabled, "")
"call s:hi("Tag", s:darkgrey, "", "", "", "", "")
"call s:hi("Delimiter", s:midblue, "", "", "", "", "")
"call s:hi("SpecialComment", s:purple, "", "", "", "", "")
"call s:hi("Debug", s:darkgrey, "", "", "", "", "")
"call s:hi("Error", s:red, "", "", "", s:is_undercurl_enabled, "")
"call s:hi("Ignore", s:darkgrey, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'vim script highlighting'

"" VIM SCRIPT: {{{
"call s:hi("vimLineComment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call s:hi("vimCommentTitle", s:heavyyellow, "", "", "", s:is_italic_comments_enabled . s:is_underline_enabled, "")
"call s:hi("vimCommentTitle", s:heavyyellow, "", "", "", s:is_italic_comments_enabled . s:is_underline_enabled, "")
"
"call s:hi("vimIsCommand", s:purple, "", "", "", "", "")
"call s:hi("vimCommand", s:purple, "", "", "", "", "")
"call s:hi("vimMap", s:purple, "", "", "", "", "")
"call s:hi("vimUserCmd", s:purple, "", "", "", "", "")
"
"call s:hi("vimNotFunc", s:fg, "", "", "", "", "")
"call s:hi("vimFunc", s:yellow, "", "", "", "", "")
"call s:hi("vimUserFunc", s:yellow, "", "", "", "", "")
"call s:hi("vimFuncName", s:yellow, "", "", "", "", "")
"call s:hi("vimFuncBody", s:yellow, "", "", "", "", "")
"call s:hi("vimFunction", s:yellow, "", "", "", "", "")
"call s:hi("vimFuncSID", s:yellow, "", "", "", "", "")
"call s:hi("vimFuncKey", s:purple, "", "", "", "", "")
"call s:hi("vimFuncVar", s:shinyblue, "", "", "", s:is_italic_enabled, "")
"
"call s:hi("vimLet", s:fg, "", "", "", "", "")
"call s:hi("vimVar", s:shinyblue, "", "", "", s:is_italic_enabled, "")
"
"call s:hi("vimParenSep", s:fg, "", "", "", "", "")
"call s:hi("vimOperParen", s:fg, "", "", "", "", "")
"
"call s:hi("vimString", s:darkgreen, "", "", "", "", "")
"
"call s:hi("vimFTOption", s:heavyyellow, "", "", "", "", "")
"call s:hi("vimSynType", s:heavyyellow, "", "", "", "", "")
"call s:hi("vimExecute", s:heavyyellow, "", "", "", "", "")
"
"call s:hi("vimOption", s:fg, "", "", "", "", "")
"
"call s:hi("vimMapMod", s:lowgrey, "", "", "", "", "")
"call s:hi("vimBracket", s:lowgrey, "", "", "", "", "")
"call s:hi("vimMapModKey", s:yellow, "", "", "", "", "")
"
"call s:hi("vimSet", s:fg, "", "", "", "", "")
"call s:hi("vimSetEqual", s:fg, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'gitcommit highlighting'

"" GITCOMMIT: {{{
"call s:hi("gitcommitFirstLine", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call s:hi("gitcommitSummary", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call s:hi("gitcommitComment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call s:hi("gitcommitHeader", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
"call s:hi("gitcommitBranch", s:pink, "", "", "", "", "")
"call s:hi("gitcommitOnBranch", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
"call s:hi("gitcommitSelectedType", s:yellow, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'editorconfig highlighting'

"" EditorConfig: {{{
"call s:hi("dosiniHeader", s:lowgrey, "", "", "", "", "")
"call s:hi("dosiniLabel", s:lowgrey, "", "", "", "", "")
"call s:hi("dosiniNumber", s:pink, "", "", "", "", "")
"call s:hi("dosiniValue", s:pink, "", "", "", "", "")
"" }}}

" TODO: implementar función abyss#highlighter() a los 'tmux highlighting'

"" TMUX: {{{
"call s:hi("tmuxCommands", s:purple, "", "", "", "", "")
"call s:hi("tmuxFlags", s:lowgrey, "", "", "", "", "")
"call s:hi("tmuxOptions", s:yellow, "", "", "", "", "")
"call s:hi("tmuxString", s:darkgreen, "", "", "", "", "")
"call s:hi("tmuxFormatString", s:lightgrey, "", "", "", "", "")
"call s:hi("tmuxEnums", s:pink, "", "", "", "", "")
"call s:hi("tmuxNumber", s:pink, "", "", "", "", "")
"" }}}
