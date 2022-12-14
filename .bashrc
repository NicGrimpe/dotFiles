#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\033[38;5;43m\]\u\[$(tput sgr0)\]@\[\033[38;5;43m\]\h\[$(tput sgr0)\]\[\033[38;5;43m\][\[$(tput sgr0)\]\w\[$(tput sgr0)\]\[\033[38;5;44m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;209m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;69m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

source /usr/share/bash-completion/completions/git

alias l='ls -l --color=auto'
alias ls='ls --color=auto'
alias config='/usr/bin/git --git-dir=/home/nic/dotFiles/.git --work-tree=/home/nic/dotFiles'
