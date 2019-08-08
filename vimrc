"================="
" common settings "
"================="
" Load defalut settings
source $VIMRUNTIME/defaults.vim

"-------------"
" preferences "
"-------------"
" To render graphical characters correctly
set ambiwidth=single

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
" jj to escape
inoremap jj <Esc>

" Exit terminal-job mode
tmap <Esc><Esc> <C-w>N 

" Enter ex-command mode
nnoremap ; :

"================="
" plugin settings "
"================="
"------------"
" vim-rooter "
"------------"
let g:rooter_change_directory_for_non_project_files = 'current'

"--------------"
" vim-quickrun "
"--------------"
let g:quickrun_config = {}
let g:quickrun_config._ = { 'into': 1, 'runner': 'job' }

"---------"
" vim-lsc "
"---------"
let g:lsc_server_commands = {}
let g:lsc_server_commands.python = 'pyls'
let g:lsc_server_commands.cpp = 'cquery --init="{ \"cacheDirectory\": \"'.$HOME.'/.cache/cquery\" }"'

"-------------"
" vim-airline "
"-------------"
let g:airline_powerline_fonts = 1

"-----------"
" vim-dcrpc "
"-----------"
let g:dcrpc_autostart = 1

"---------------"
" limelight.vim "
"---------------"
let g:limelight_conceal_ctermfg = 'grey'
autocmd VimEnter * Limelight
