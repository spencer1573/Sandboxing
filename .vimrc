
:syntax on

set number

"function! NumberToggle()
"  if(&relativenumber == 1)
"    set number
"  else
"    set relativenumber
"  endif
"endfunc

":call NumberToggle()

set relativenumber
set number

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set expandtab

set smarttab

set smartindent

" this is how you do the sensible configuration
" mkdir -p ~/.vim/plugin
" curl https://raw.githubusercontent.com/tpope/vim-sensible/master/plugin/sensible.vim > ~/.vim/plugin/sensible.vim


" go here for info about how to install jshint2
" https://github.com/Shutnik/jshint2.vim
set runtimepath+=~/.vim/bundle/jshint2.vim/


