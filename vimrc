set nocompatible
set number
set showcmd
set ruler
syntax on

set listchars=tab:»\ ,eol:¶,trail:·,nbsp:·

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
