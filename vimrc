set nocompatible " No Vi mode. Effects other settings; first.

" Enable Pathogen by Tim Pope.
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set modelines=0 " Avoid autorunning of malicious modelines.
set number
set showcmd
set ruler
set listchars=tab:»\ ,eol:¶,trail:_,nbsp:·

if has("autocmd")
	syntax on
	filetype plugin indent on

	augroup cursor
	autocmd!
	autocmd WinLeave * setlocal nocursorline
	autocmd WinEnter * setlocal cursorline
	augroup END
endif

" .vimrc_local
if filereadable(expand("$HOME/.vimrc_local"))
  source ~/.vimrc_local
endif
