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

" Highlight texts that I am searching
set hlsearch

"================="
" plugin settings "
"================="
"--------------"
" vim-quickrun "
"--------------"
let g:quickrun_config = {}
let g:quickrun_config._ = { 'into': 1 }

"------------------"
" asyncomplete.vim "
"------------------"
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_dignostics_echo_delay = 50
let g:lsp_signs_error = {'text': '😱'}
let g:lsp_signs_warning = {'text': '🤔'}

set completeopt+=preview
highlight SignColumn NONE

if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.ccls'))},
      \ 'initialization_options': { 'cacheDirectory': expand('~/.cache/ccls') },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
