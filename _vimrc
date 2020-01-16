set laststatus=2

set number
set showcmd
set showmatch

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set autoindent
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set backspace=2

set encoding=utf-8
set nobomb
syntax on

set wildmenu
set showmatch

color dracula
set lines=40 columns=150

set guifont=Fira\ Code:h11
set t_Co=256

set go-=T
set go-=m

"map <F12> :NERDTreeToggle<CR>
"ap <C-t> :CtrlP<CR>
