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

" TARBAR
let g:tagbar_position = 'left'
nmap <leader>c :TagbarToggle <cr>
