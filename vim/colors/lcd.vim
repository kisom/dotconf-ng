set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "lcd"

hi Comment gui=bold guifg=#009900
hi Constant gui=italic
hi Cursor guifg=green guibg=black
hi CursorColumn guifg=#343434 guibg=gray90
hi CursorIM gui=None
hi CursorLine guibg=gray90
hi DiffAdd guibg=lightblue
hi DiffChange guibg=plum1
hi DiffDelete gui=bold guifg=blue guibg=lightcyan
hi DiffText gui=bold guibg=red
hi Directory guifg=blue
hi Error guifg=white guibg=red
hi ErrorMsg guifg=white guibg=red
hi FoldColumn guifg=green
hi Folded guifg=#6d6d6d
hi Identifier guifg=darkcyan
hi Ignore guifg=white
hi IncSearch gui=reverse
hi LineNr guifg=#049b04
hi MatchParen gui=reverse
hi ModeMsg gui=bold
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=None
hi Normal guifg=green guibg=black
hi Pmenu guibg=plum1
hi PmenuSbar guibg=grey
hi PmenuSel guibg=grey
hi PmenuThumb gui=reverse
hi PreProc gui=None
hi Question gui=bold guifg=seagreen
hi Search gui=reverse
hi SignColumn guifg=darkblue guibg=grey
hi Special gui=italic
hi SpecialKey gui=None
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=None
hi StatusLine gui=bold,reverse
hi StatusLineNC gui=reverse
hi String gui=italic
hi TabLine gui=bold,reverse,underline guibg=gray29
hi TabLineFill gui=reverse
hi TabLineSel gui=bold
hi Title gui=bold,italic
hi Todo guibg=gray44
hi Type gui=None
hi Underlined gui=underline
hi VertSplit gui=reverse
hi Visual gui=bold guibg=#373737
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=red
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Function Identifier
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Typedef Type
