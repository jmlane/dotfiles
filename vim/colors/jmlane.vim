" Custom VIM colour scheme
" Based on ir_black terminal colours: http://blog.infinitered.com

" gui highlight parameters match the following 8-bit colours:

"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #B5DCFE
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jmlane"

hi Normal	guifg=#F1F1F1 guibg=#000000
hi NonText	guifg=#F1F1F1 guibg=#000000

" Overridden defaults.
hi Comment	term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=#96CBFE guibg=NONE
hi Constant	term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=#FF6C60 guibg=NONE
hi Special	term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#FF73FD guibg=NONE
hi Identifier	term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=#C6C5FE guibg=NONE
hi Statement	term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=NONE guifg=#FFFFB6 guibg=NONE
hi PreProc	term=underline cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#FF73FD guibg=NONE
hi Type		term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=NONE guifg=#A8FF60 guibg=NONE
hi Underlined	term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=#FF73FD
hi Ignore	term=NONE cterm=NONE ctermfg=White ctermbg=NONE gui=NONE guifg=#EEEEEE guibg=NONE
hi Error	term=reverse cterm=NONE ctermfg=White ctermbg=Red gui=NONE guifg=#EEEEEE guibg=#FF6C60
hi Todo		term=standout cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=#4E4E4E guibg=#FFFFB6

" Custom changes.
hi LineNr	guifg=#FFFFB6

" Default highlight group links.
hi link String		Constant
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special
