"set titlestring=vim\ %{expand(\"%t\")} "window title
"set title "enable window title

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

set t_Co=256
colorscheme inkpot
"colorscheme 256-grayvim
"colorscheme grb256
"colorscheme molokai
