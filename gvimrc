set lines=24 columns=80
set guioptions-=T
set bg=dark
set transparency=10
set guifont=Monaco:h11

" Custom colorscheme
if filereadable(expand("$HOME/.vim/colors/ir_black.vim"))
  colorscheme ir_black
endif
