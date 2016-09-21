set laststatus=2

set number
set showcmd
set showmatch

"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set backspace=2

set encoding=utf-8
set nobomb
syntax on

set wildmenu
set showmatch

set go-=T
set go-=m

colorscheme gravity
"colorscheme solarized8_light_high
"colorscheme inkpot
"colorscheme codeschool
set lines=150 columns=450

"set guifont=DejaVu\ Sans\ Mono:h14
set guifont=Consolas:h14
set t_Co=256

"map <F12> :NERDTree<CR>
