" MacVim only
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

" Bjorn Winckler's MacVim .vimrc suggestions
set nocp
set bs=indent,eol,start
syntax on

" Disable blinking cursor in normal mode
set gcr=n:blinkon0 #gcr=a:blinkon0 for no blinking cursor in any mode.

" Search-related options: HighLight matches in Search (hls), show current matching pattern (is), ignore case (ic) unless search for both uppercase and lowercase letters (scs)
set hls incsearch ignorecase scs

" Automatic file type detection
filetype plugin indent on

" Spaces per indent and smart tab-to-spaces
set shiftwidth=2 softtabstop=4 et

set ruler
