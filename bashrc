export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -GFh'
alias vi='vim'

alias ds="source ~/ds/bin/activate"
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
ds
nvm use 5.4
