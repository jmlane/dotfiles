set nocompatible
set number
set showcmd
set ruler
set background=dark
syntax on

" Custom colorscheme
if filereadable(expand("$HOME/.vim/colors/ir_black.vim"))
  colorscheme ir_black
endif

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
