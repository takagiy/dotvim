"================="
" common settings "
"================="
" Load defalut settings
source $VIMRUNTIME/defaults.vim

"-------------"
" preferences "
"-------------"
" To render graphical characters correctoly
set ambiwidth=double

"---------"
" editing "
"---------"
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
set shiftwidth=4

" Highlight texts that I am searching
set hlsearch

"--------"
" keymap "
"--------"
" Exit terminal-job mode
tmap <Esc><Esc> <C-w>N 

"================="
" plugin settings "
"================="
"--------------"
" vim-quickrun "
"--------------"
let g:quickrun_config = {}
let g:quickrun_config._ = { 'into': 1, 'runner': 'job' }

"-----------------------"
" LanguageClient-neovim "
"-----------------------"
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.python = ['pyls']
let g:LanguageClient_serverCommands.cpp = ['cquery',
            \'--init='.json_encode({
            \   'cacheDirectory': expand('~/.cache/cquery'),
            \   'filterAndSort': v:false
            \})]

"-------------"
" vim-airline "
"-------------"
let g:airline_powerline_fonts = 1
