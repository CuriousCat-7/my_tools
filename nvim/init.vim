set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
:set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
" :autocmd OptionSet guicursor noautocmd set guicursor=
