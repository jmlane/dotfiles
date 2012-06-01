" As per http://docs.python-guide.org/en/latest/dev/env/#vim
setlocal textwidth=79
setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab
setlocal softtabstop=4
setlocal shiftround

" Disable mappings for plugins
let g:no_pep8_maps=1
let g:no_flake8_maps=1

" Run Python plugins automatically on save
"autocmd BufWritePost *.py call Flake8()
