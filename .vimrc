
:syntax on

set number

if(&relativenumber == 1)
  set number
else
  set relativenumber
endif

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set expandtab

set smarttab

set smartindent

" this is how you do the sensible configuration
" mkdir -p ~/.vim/plugin
" curl https://raw.githubusercontent.com/tpope/vim-sensible/master/plugin/sensible.vim > ~/.vim/plugin/sensible.vim




