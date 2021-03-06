set number
set autoindent
set smartindent
set cindent
set shiftwidth=4
syntax on
set backspace=indent,eol,start
set visualbell t_vb=
set expandtab
set tabstop=4
set incsearch
set ignorecase
set smartcase
set mouse=a
filetype indent on
nmap <silent> <leader>n :silent :nohlsearch<CR>

if has('gui_running')
    colorscheme jellybeans
else
    colorscheme firewatch
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'artur-shaik/vim-javacomplete2'

call plug#end()

autocmd Filetype java setlocal omnifunc=javacomplete#Complete
