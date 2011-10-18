" Enable Pathogen by Tim Pope
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
set number
set showcmd
set ruler
syntax on
filetype plugin indent on

set listchars=tab:»\ ,eol:¶,trail:·,nbsp:·

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
