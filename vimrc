"================="
" common settings "
"================="
" Load defalut settings
source $VIMRUNTIME/defaults.vim

" Flowing cursor over end of line
set virtualedit=all

" Show line numbers
set number

" Turn off mouse support
set mouse-=a

" Show invisible characters
set list
set listchars=eol:.,tab:»\ 

" Expand tabs
set expandtab
set tabstop=4

"================="
" plugin settings "
"================="
"--------------"
" vim-quickrun "
"--------------"
let g:quickrun_config = {}
let g:quickrun_config._ = { 'into': 1 }

"-----"
" ale "
"-----"
highlight ALEErrorSign NONE
highlight ALEWarningSign NONE
highlight SignColumn NONE
let g:ale_sign_warning = '🤔'
let g:ale_sign_error = '😵'
let g:ale_linters = {}
let g:ale_linters.python = ['flake8']
