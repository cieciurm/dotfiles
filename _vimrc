set laststatus=2

set number
set showcmd
set showmatch

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

set encoding=utf-8
set nobomb
syntax on

set wildmenu
set showmatch

colorscheme inkpot

set guifont=Consolas:h14
