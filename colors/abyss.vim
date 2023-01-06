set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "abyss"

let s:underline = "underline"
let s:italic = "italic,"
let s:bold = "bold,"
let s:undercurl = "undercurl,"

" Config: {{{
" -- Italic
let g:abyss_italic = get(g:, "abyss_italic", 0)
let s:is_italic_enabled = (g:abyss_italic == 0) ? "" : get(s:, "italic")

" -- Italic comments
let g:abyss_italic_comments = get(g:, "abyss_italic_comments", 1) " enabled per default
let s:is_italic_comments_enabled = (g:abyss_italic_comments == 0) ? "" : get(s:, "italic")

" -- Bold
let g:abyss_bold = get(g:, "abyss_bold", 0)
let s:is_bold_enabled = (g:abyss_bold == 0) ? "" : get(s:, "bold")

" -- Underline
let g:abyss_underline = get(g:, "abyss_underline", 0)
let s:is_underline_enabled = (g:abyss_underline == 0) ? "" : get(s:, "underline")

" -- Undercurl
let g:abyss_undercurl = get(g:, "abyss_undercurl", 0)
let s:is_undercurl_enabled = (g:abyss_undercurl == 0) ? "" : get(s:, "undercurl")
" }}}

" Colors: {{{
let s:bg = "#000c18"
let s:fg = "#6688cc"
let s:darkgreen = "#22aa44"
let s:green = "#44cb46"
let s:darkblue = "#082050"
let s:purple = "#9966b8"
let s:pink = "#f280d0"
let s:lightgrey = "#80A2B7"
let s:lowgrey = "#406385"
let s:darkgrey = "#225588"
let s:midblue = "#384887"
let s:shinyblue = "#2277ff"
let s:red = "#cb4444"
let s:darkred = "#770811"
let s:orange = "#FF9900"
let s:yellow = "#ddbb88"
let s:heavyyellow = "#FFEEBB"
let s:black = "#010101"
let s:white = "#ffffff"
let s:none = "NONE"
" }}}

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

if version >= 700
    call s:hi("Cursor", s:midblue, s:darkred, "", "", "", "")
    call s:hi("CursorLine", "", s:darkblue, "", "", "", "")
    call s:hi("CursorLineNr", s:lightgrey, s:bg, "", "", "", "")

    call s:hi("ColorColumn", "", s:darkred, "", "", "", "")

    call s:hi("TabLine", s:lightgrey, s:bg, "", "", "", "")
    call s:hi("TabLineFill", s:bg, s:bg, "", "", "", "")
    call s:hi("TabLineSel", s:white, s:bg, "", "", "", "")

    " -- Pop up (autocompletion) style
    call s:hi("Pmenu", s:fg, s:bg, "", "", "", "")
    call s:hi("PmenuSbar", s:fg, s:bg, "", "", "", "")
    call s:hi("PmenuSel", s:bg, s:fg, "", "", "", "")
    call s:hi("PmenuThumb", s:heavyyellow, s:darkred, "", "", "", "")
endif

" Editor Highlighting: {{{
call s:hi("Normal", s:fg, s:bg, "", "", "", "")
call s:hi("NonText", s:bg, s:bg, "", "", "", "")
call s:hi("SignColumn", s:fg, s:bg, "", "", "", "")
call s:hi("Question", s:yellow, "", "", "", "", "")
call s:hi("Title", s:heavyyellow, "", "", "", "", "")


call s:hi("LineNR", s:lowgrey, s:bg, "", "", "", "")

call s:hi("StatusLine", "", s:bg, "", "", "", "")
call s:hi("StatusLineNC", "", s:black, "", "", "", "")

call s:hi("VertSplit", s:bg, s:fg, "", "", "", "")

call s:hi("Directory", s:heavyyellow, "", "", "", "", "")

call s:hi("ErrorMsg", s:red, s:none, "", "", "", "")
call s:hi("WarningMsg", s:heavyyellow, s:none, "", "", "", "")

call s:hi("Search", s:black, s:yellow, "", "", "", "")
call s:hi("IncSearch", s:black, s:yellow, "", "", "", "")

call s:hi("Visual", "", s:darkred, "", "", "", "")

call s:hi("ModeMsg", s:fg, s:none, "", "", "", "")
call s:hi("MoreMsg", s:fg, "", "", "", "", "")

call s:hi("MatchParen", s:heavyyellow, s:darkred, "", "", "", "")

call s:hi("SpecialKey", s:heavyyellow, "", "", "", "", "")

call s:hi("SpellBad", s:red, "", "", "", "", "")
call s:hi("SpellRare", s:yellow, "", "", "", "", "")
call s:hi("SpellCap", s:yellow, "", "", "", "", "")
call s:hi("SpellLocal", s:orange, "", "", "", "", "")

call s:hi("QuickFixLine", "", s:darkred, "", "", "", "")

call s:hi("WildMenu", s:bg, s:fg, "", "", "", "")

" -- Diffs
call s:hi("DiffAdd", "", s:darkgreen, "", "", "", "")
call s:hi("DiffChange", "", s:yellow, "", "", "", "")
call s:hi("DiffDelete", "", s:darkred, "", "", "", "")
call s:hi("DiffText", "", s:orange, "", "", "", "")
" }}}

" Syntax Highlighting: {{{
call s:hi("String", s:darkgreen, "", "", "", "", "")
call s:hi("Comment", s:midblue, "", "", "", s:is_italic_comments_enabled, "")
call s:hi("Number", s:pink, "", "", "", "", "")
call s:hi("Float", s:pink, "", "", "", "", "")
call s:hi("Boolean", s:pink, "", "", "", "", "")
call s:hi("Keyword", s:darkgrey, "", "", "", "", "")
call s:hi("Repeat", s:darkgrey, "", "", "", "", "")
call s:hi("Character", s:lightgrey, "", "", "", "", "")
call s:hi("Statement", s:darkgrey, "", "", "", "", "")
call s:hi("StorageClass", s:fg, "", "", "", "", "")
call s:hi("Function", s:yellow, "", "", "", "", "")
call s:hi("Label", s:darkgrey, "", "", "", "", "")
call s:hi("Operator", s:darkgrey, "", "", "", "", "")
call s:hi("Exception", s:darkgrey, "", "", "", "", "")
call s:hi("Type", s:heavyyellow, "", "", "", s:is_underline_enabled, "")
call s:hi("Constant", s:fg, "", "", "", "", "")
call s:hi("SpecialChar", s:yellow, "", "", "", s:is_underline_enabled, "")
call s:hi("Typedef", s:purple, "", "", "", s:is_italic_enabled, "")
call s:hi("Structure", s:purple, "", "", "", "", "")
call s:hi("PreProc", s:darkgrey, "", "", "", "", "")
call s:hi("Include", s:darkgrey, "", "", "", "", "")
call s:hi("Define", s:darkgrey, "", "", "", "", "")
call s:hi("Macro", s:darkgrey, "", "", "", "", "")
call s:hi("PreCondit", s:darkgrey, "", "", "", "", "")
call s:hi("Special", s:pink, "", "", "", "", "")
call s:hi("Underlined", s:darkgreen, "", "", "", s:is_underline_enabled, "")
call s:hi("Conceal", "", s:bg, "", "", "", "")
call s:hi("Todo", s:heavyyellow, "", "", "", s:is_italic_enabled, "")
call s:hi("Tag", s:darkgrey, "", "", "", "", "")
call s:hi("Delimiter", s:midblue, "", "", "", "", "")
call s:hi("SpecialComment", s:purple, "", "", "", "", "")
call s:hi("Debug", s:darkgrey, "", "", "", "", "")
call s:hi("Error", s:red, "", "", "", s:is_undercurl_enabled, "")
call s:hi("Ignore", s:darkgrey, "", "", "", "", "")
" }}}
