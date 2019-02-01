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
let g:ycm_autoclose_preview_window_after_insertion = 1
let autosave=5
let g:SuperTabDefaultCompletionType = "<c-n>"
"set foldlevel=99
"set foldmethod=indent
