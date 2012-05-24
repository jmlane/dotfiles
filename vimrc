" Vim settings over Vi.
" Affects other configs, so goes first.
set nocompatible

" Enable Pathogen by Tim Pope.
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set number
set showcmd
set ruler
set listchars=tab:»\ ,eol:¶,trail:_,nbsp:·

syntax on
filetype plugin indent on

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
