set tabstop=4
set nu!
set laststatus=2

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

set autoindent 
set smartindent
"set expandtab
set shiftwidth=4
set softtabstop=4
