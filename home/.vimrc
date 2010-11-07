filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set number

map <f2> :NERDTreeToggle<CR>
map <f5> :w<CR>:!ruby %<CR>
