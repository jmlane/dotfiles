" Vim Python ftplugin overrides.
" Last Change:	2012-02-10
" Maintainer:	Jonathan M. Lane <jmlane@makeit.ca>
" License:	This file is placed in the public domain.

" As per http://docs.python-guide.org/en/latest/dev/env/#vim
setlocal textwidth=79
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
setlocal shiftround

" Syntax highlighting
let b:python_highlight_all=1

" Highlight EOL whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
