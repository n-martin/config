# General
alias ls='ls -GFh'
alias ~="cd ~/"
alias .="open ."
alias ..="cd ../"
alias ...="cd ../.."
alias c="clear"
alias finder="open ."

# Shortcuts
function dev() {
    if [ -z "$@" ]; then
        cd /Users/nmartin/workspace/
    else
        cd /Users/nmartin/workspace/$@
    fi
}

# Terminal Prompt
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0;0m\]"
PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$\n>"

# LS Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
