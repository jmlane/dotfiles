set lines=24 columns=80
set guicursor=n-v:blinkon0 "No blinking cursor in normal and visual modes.
set guioptions-=T

" .gvimrc_local
if filereadable(expand("$HOME/.gvimrc_local"))
  source ~/.gvimrc_local
endif
