export PATH="/usr/local/bin:$PATH"

## Git branching in terminal
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias dotfiles='cd ~/.dotfiles'
alias sites='cd ~/Sites'
alias maison='cd ~/Sites/Git_Repos/maison.io'
alias gthr='cd ~/Sites/Git_Repos/gthr'

## Fucking-ay cool terminal hotness
PS1='\[\e[0;31m\]⚡\[\e[m\] \[\e[0;30m\]${PWD##*/}\[\e[39m\]\[\e[1;32m\]$(parse_git_branch)\[\e[m\] '
