zmodload zsh/zprof

HISTSIZE=10000
HISTFILESIZE=20000
HISTFILE=~/.zhistory

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

PATH="/usr/local/sbin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# include .includerc if it exists
if [ -f "$HOME/.includerc" ]; then
    source "$HOME/.includerc"
fi

