set nocompatible
set number
set showcmd
set ruler
syntax on

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
