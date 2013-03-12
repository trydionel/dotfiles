" Nice resources:
" - https://github.com/carlhuda/janus/blob/master/vimrc
" - http://amix.dk/vim/vimrc.html

filetype off

call pathogen#infect()

set number
set ruler
syntax on

" Whitespace
set tabstop=2
set smarttab
set expandtab
set shiftwidth=2
set autoindent
set tabline=2
set list listchars=tab:\ \ ,trail:·
autocmd BufWritePre *.rb :%s/\s\+$//e

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

" Status bar
set laststatus=2

" Turn off help!
map <f1> <ESC>
imap <F1> <ESC>

map <f2> :NERDTreeToggle<CR>

" Ruby mappings
au FileType ruby map <f5> :Rake<CR>
au FileType ruby map <f6> :.Rake<CR>

filetype plugin indent on

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Syntax mappings for JavaScript templates
autocmd BufNewFile,BufRead *.ejs setf html.eruby
