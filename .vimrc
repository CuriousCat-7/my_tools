set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set ts=4
set sw=4
set expandtab
set autoindent

let g:go_version_warning = 0
let g:ycm_collect_identifiers_from_tag_files = 1
" 开启语义补全
" " 修改对C语言的补全快捷键，默认是CTRL+space，修改为ALT+;未测出效果
" "let g:ycm_key_invoke_completion = '<M-;>'
" " 设置转到定义处的快捷键为ALT+G，未测出效果
" "nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> 
" "关键字补全
" "let g:ycm_seed_identifiers_with_syntax = 1
" " 在接受补全后不分裂出一个窗口显示接受的项
" set completeopt-=preview
" " 让补全行为与一般的IDE一致
" set completeopt=longest,menu
" " 不显示开启vim时检查ycm_extra_conf文件的信息
" let g:ycm_confirm_extra_conf=0
" " 每次重新生成匹配项，禁止缓存匹配项
" let g:ycm_cache_omnifunc=0
" " 在注释中也可以补全
" let g:ycm_complete_in_comments=1
" " 输入第一个字符就开始补全
" let g:ycm_min_num_of_chars_for_completion=1
" " 错误标识符
" let g:ycm_error_symbol='>>'
" " 警告标识符
" let g:ycm_warning_symbol='>*'
" " 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
" " let g:ycm_use_ultisnips_completer=0
" "
"call plug#begin('~/.vim/plugged')
""Plug 'itchyny/lightline.vim'
"Plug 'alloric/YouCompleteMe.vim'
"call plug#end()
