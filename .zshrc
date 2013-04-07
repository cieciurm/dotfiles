autoload colors; colors

# Prompt: user@host ~ % 
PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%}@%{$fg_bold[yellow]%}%m%{$reset_color%} %~ %# "

# Completion
zstyle ':completion:*' menu select yes
zstyle ':completion:*:default' list-colors ''

# General movement
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
# for FreeBSD console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# History + cursor at the end of the line
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Aliases - system
alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Aliases - tools
alias quit='exit'
alias vi='vim'
alias d='date'

# Aliases - programming
alias py='python'
alias cc='cc -Wall -pedantic'
