set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
let g:go_version_warning = 0
set nu
let autosave=5
let b:autopairs_enabled = 0
let g:loaded_comfortable_motion = 1

" DROPPED
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:pymode_options_colorcolumn = 0
"let g:pymode_lint_ignore = "E"
"let g:pymode_lint_ignore = ["E0100", "E501", "E702", "E2", "C","W"]

" OPTIONAL
"set foldlevel=99
"set foldmethod=indent

" AUTOCOMPLETE
" disable jedi autp completion and use tabnine
"let g:jedi#auto_initialization = 0
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0

" HEADER
let g:header_auto_add_header = 0
let g:header_field_filename = 0
let g:header_field_timestamp_format = '%Y/%m/%d %H:%M:%S'
let g:header_field_modified_by = 0
let g:header_field_modified_timestamp = 0
let g:header_field_author = 'limingyao'
let g:header_field_author_email = ''
map <F4> :AddHeader<CR>

" FOLD
nmap <leader>t :set foldmethod=indent <cr>

" anyfold
filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
" autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype

" set foldlevel=0  " close all folds
" " or
set foldlevel=99 " Open all folds


" TARBAR
"let g:tagbar_width = max([25, winwidth(0) / 5])
"let g:tagbar_position = 'left'
nmap <leader>c :TagbarToggle <cr>

" Ctags
set tags=./tags;

" Setting for C, CPP
autocmd BufRead,BufNewFile *.h,*.cpp,*.c,*.cc nmap <leader>d g<C-]>
autocmd BufRead,BufNewFile *.h,*.cpp,*.c,*.cc  setlocal sw=2


" highlight NOTE
autocmd BufRead,BufNewFile * syn keyword   cTodo   contained NOTE

"mouse
"set mouse=a

"search
nmap <F2> <C-*>

" highlight settings
:set cursorline
au BufReadPost *.INFO set syntax=log

" paste to calib
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
