set lines=24 columns=80
set guioptions-=T

" .gvimrc_local
if filereadable(expand("$HOME/.gvimrc_local"))
  source ~/.gvimrc_local
endif
