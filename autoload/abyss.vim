function abyss#getSchemeColors()
    let l:colors = {}

    let l:colors.bg = ["#000c18", 232]
    let l:colors.fg = ["#6688cc", 68]

    let l:colors.darkgreen = ["#22aa44", 2]
    let l:colors.green = ["#44cb46", 76]
    let l:colors.darkblue = ["#082050", 4]
    let l:colors.purple = ["#9966b8", 134]
    let l:colors.pink = ["#f280d0", 213]

    let l:colors.lightgrey = ["#80A2B7", 110]
    let l:colors.lowgrey = ["#406385", 24]
    let l:colors.darkgrey = ["#225588", 25]
    let l:colors.midblue = ["#384887", 18]
    let l:colors.shinyblue = ["#2277ff", 27]

    let l:colors.red = ["#cb4444", 124]
    let l:colors.darkred = ["#770811", 88]
    let l:colors.orange = ["#FF9900", 214]
    let l:colors.yellow = ["#ddbb88", 179]
    let l:colors.heavyyellow = ["#FFEEBB", 222]

    let l:colors.white = ["#ffffff", 15]
    let l:colors.black = ["#000000", 0]

    let l:colors.none = ["NONE", "NONE"]

    return l:colors
endfunction

" return the list of attributes available to use in 'attr' parameter in
" abyss#highlighter() function
function abyss#getAttributes()
    let l:attrs = {}

    let l:attrs.attr_bold = ["bold", "bold"]
    let l:attrs.attr_italic = ["italic", "italic"]
    let l:attrs.attr_undercurl = ["undercurl", "undercurl"]
    let l:attrs.attr_underline = ["underline", "underline"]

    return l:attrs
endfunction

" TODO: crear función: abyss#getSP()

" This function sets colors to highlight groups. all params are 'List' data
" type
function abyss#highlighter(group, attr, bg, fg, sp)
    " e.g:
    " let attr = ["italic", "bold"]
    " let bg = ["#000000", 0]
    " let fg = ["#FFEEBB", 222]
    " let sp = ["NONE"]
    "
    " :highlight! cterm=attr[1] gui=attr[0] ctermbg=bg[1] guibg=bg[0]
    " ctermfg=fg[1] guifg=fg[0] guisp=sp[0]
    execute 'highlight! ' . a:group . ' ' .
                \ 'cterm=' . a:attr[1] . ' ' . 'gui=' . a:attr[0] . ' ' .
                \ 'ctermbg=' . a:bg[1] . ' ' . 'guibg=' . a:bg[0] . ' ' .
                \ 'ctermfg=' . a:fg[1] . ' ' . 'guifg=' . a:fg[0] . ' ' .
                \ 'guisp=' . a:sp[0]
endfunction

