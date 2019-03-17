#
# ~/.bashrc
#

EDITOR=emacs
BROWSER=/usr/bin/firefox

GREEN="\[\e[38;5;157m\]"
NC="\[\e[m\]"
CYAN="\[\e[96m\]"
WHITE="\[\e[97m\]"

PS1="${GREEN}\u@\h${NC} ${CYAN}\w ${NC} \$ "

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias ema='emacs -nw'
alias glo='git log --all --oneline --graph -42'
alias gdba='gdb --args'
alias gitline="git ls-files | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort -f | uniq -ic | sort -nr"
alias ls='ls --color=auto'

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# Color support for less
export LESS_TERMCAP_mb=$'\e[0;36m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;35m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"
