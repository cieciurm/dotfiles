set laststatus=2 "Status line: always

set number "Show line numbers
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

set guifont=Fira\ Code:h12
"set guifont=DejaVu\ Sans\ Mono:h14

set go-=T
set go-=m

set relativenumber

:function BigFont()
:  let fonts = split(&guifont, "h")
:  let newFontSize = fonts[1] + 2
:  let newFont = fonts[0] . "h" . newFontSize
:  echom newFont
":  set guifont=newFont
:  set guifont=Fira\ Code:h16
:endfunction

:function SmallFont()
:  set guifont=Fira\ Code:h12
:endfunction

map <F12> :NERDTreeToggle<CR>
map <C-t> :CtrlPMRU<CR>
map <F8> :call SmallFont()<CR>
map <F9> :call BigFont()<CR>
