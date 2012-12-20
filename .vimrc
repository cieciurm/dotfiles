set laststatus=2
set history=32

set number 
set showcmd
set showmatch

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

set autoindent 
set smartindent
set shiftwidth=2
set tabstop=2 
set softtabstop=2

set encoding=utf-8
set nobomb
syntax on

set wildmenu

colorscheme grb256
