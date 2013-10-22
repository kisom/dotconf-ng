" Vim color file - no_quarter
" Generated by http://bytefluent.com/vivify 2012-10-07
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "no_quarter"

hi IncSearch guifg=#80ffff guibg=#0060c0 guisp=#0060c0 gui=NONE ctermfg=123 ctermbg=4 cterm=NONE
hi WildMenu guifg=#000000 guibg=#abac84 guisp=#abac84 gui=NONE ctermfg=NONE ctermbg=144 cterm=NONE
"hi SignColumn -- no settings --
hi SpecialComment guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Typedef guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Title guifg=#707070 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi Folded guifg=#40f0f0 guibg=#006090 guisp=#006090 gui=NONE ctermfg=87 ctermbg=24 cterm=NONE
hi PreCondit guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Include guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#abac84 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#707070 guibg=#383838 guisp=#383838 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#ff78f0 guibg=#a02860 guisp=#a02860 gui=NONE ctermfg=213 ctermbg=125 cterm=NONE
hi ErrorMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi Ignore guifg=#343434 guibg=NONE guisp=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
hi Debug guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#333333 guisp=#333333 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Identifier guifg=#90c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Conditional guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Todo guifg=#ff80d0 guibg=NONE guisp=NONE gui=NONE ctermfg=212 ctermbg=NONE cterm=NONE
hi Special guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi LineNr guifg=#707070 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#909090 guisp=#909090 gui=NONE ctermfg=NONE ctermbg=246 cterm=NONE
hi Normal guifg=#cccccc guibg=#343434 guisp=#343434 gui=NONE ctermfg=252 ctermbg=236 cterm=NONE
hi Label guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#abac84 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi Search guifg=#343434 guibg=#999999 guisp=#999999 gui=NONE ctermfg=236 ctermbg=246 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Statement guifg=#c0c090 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#647bcf guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Character guifg=#b07050 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#b07050 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Boolean guifg=#c0c090 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Operator guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#2b2b2b guisp=#2b2b2b gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#e8e800 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#ffe8c8 guibg=#c06800 guisp=#c06800 gui=NONE ctermfg=230 ctermbg=1 cterm=NONE
hi DiffDelete guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
hi ModeMsg guifg=#a0d0ff guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Function guifg=#90c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#40c0ff guibg=#404040 guisp=#404040 gui=NONE ctermfg=81 ctermbg=238 cterm=NONE
hi PreProc guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#b0ffb0 guibg=#008000 guisp=#008000 gui=NONE ctermfg=157 ctermbg=2 cterm=NONE
hi MoreMsg guifg=#70ffc0 guibg=#8040ff guisp=#8040ff gui=NONE ctermfg=85 ctermbg=13 cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#abac84 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi Exception guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Keyword guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Type guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#e03870 guibg=#601830 guisp=#601830 gui=NONE ctermfg=168 ctermbg=52 cterm=NONE
hi Cursor guifg=#424242 guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=238 ctermbg=10 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#ffffff guibg=#8000ff guisp=#8000ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi PMenu guifg=#1a1a1a guibg=#7f7f7f guisp=#7f7f7f gui=NONE ctermfg=234 ctermbg=8 cterm=NONE
hi SpecialKey guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi Constant guifg=#b07050 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi String guifg=#b07050 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#4d4d4d guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Structure guifg=#60f0a8 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Macro guifg=#c090c0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi Underlined guifg=#707070 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
"hi TabLine -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#dc966b guibg=#343434 guisp=#343434 gui=NONE ctermfg=173 ctermbg=236 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c864c7 guibg=#343434 guisp=#343434 gui=NONE ctermfg=170 ctermbg=236 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#ffffff guibg=#8800ff guisp=#8800ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi cursorim guifg=#ffffff guibg=#8800ff guisp=#8800ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi perlsharpbang guifg=#c0c090 guibg=#505050 guisp=#505050 gui=NONE ctermfg=144 ctermbg=239 cterm=NONE
hi perlfunctionname guifg=#ffffff guibg=#343434 guisp=#343434 gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi perlstatementinclude guifg=#c0c090 guibg=#3b4038 guisp=#3b4038 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlcontrol guifg=#c0c090 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlstatement guifg=#c0c090 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi perllabel guifg=#c0c090 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlmatchstartend guifg=#c0c090 guibg=#424242 guisp=#424242 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlrepeat guifg=#c0b790 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perlshellcommand guifg=NONE guibg=#424242 guisp=#424242 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi perlstatementfiledesc guifg=#a2c090 guibg=#343434 guisp=#343434 gui=NONE ctermfg=108 ctermbg=236 cterm=NONE
hi perlstatementsub guifg=#c0c090 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perloperator guifg=#c0c090 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi htmltagname guifg=#b3b3b3 guibg=#343434 guisp=#343434 gui=NONE ctermfg=249 ctermbg=236 cterm=NONE
hi mytaglistfilename guifg=#cccccc guibg=#404040 guisp=#404040 gui=underline ctermfg=252 ctermbg=238 cterm=underline
hi perlvarsimplemembername guifg=#b3b3b3 guibg=#343434 guisp=#343434 gui=NONE ctermfg=249 ctermbg=236 cterm=NONE
hi perlnumber guifg=#80ac7b guibg=#343434 guisp=#343434 gui=NONE ctermfg=108 ctermbg=236 cterm=NONE
hi perlvarnotinmatches guifg=#915555 guibg=#343434 guisp=#343434 gui=NONE ctermfg=95 ctermbg=236 cterm=NONE
hi perlqq guifg=#cccccc guibg=#393939 guisp=#393939 gui=NONE ctermfg=252 ctermbg=237 cterm=NONE
hi perlstatementcontrol guifg=#dcdb6b guibg=#343434 guisp=#343434 gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi perlstatementhash guifg=#c0c090 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlvarsimplemember guifg=#c0c090 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perlidentifier guifg=#90c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi perlstringstartend guifg=#b07050 guibg=#353535 guisp=#353535 gui=NONE ctermfg=137 ctermbg=236 cterm=NONE
hi perlspecialbeom guifg=#cccccc guibg=#404040 guisp=#404040 gui=NONE ctermfg=252 ctermbg=238 cterm=NONE
hi perlvarplain guifg=#74c5c6 guibg=#343434 guisp=#343434 gui=NONE ctermfg=116 ctermbg=236 cterm=NONE
hi perlstatementnew guifg=#c0c090 guibg=#424242 guisp=#424242 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlpackagedecl guifg=#80ac7b guibg=#404040 guisp=#404040 gui=NONE ctermfg=108 ctermbg=238 cterm=NONE
hi perlvarplain2 guifg=#74c6a8 guibg=#343434 guisp=#343434 gui=NONE ctermfg=115 ctermbg=236 cterm=NONE
