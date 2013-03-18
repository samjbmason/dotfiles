export PATH="/usr/local/bin:/usr/local/share/npm/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

## Rbenv Setup
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## Git branching in terminal
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias dotfiles='cd ~/.dotfiles'
alias sites='cd ~/Sites'
alias maison='cd ~/Sites/Git\ Repos/maison.io'
alias sapling='cd ~/Sites/Git\ Repos/sapling'

## Fucking-ay cool terminal hotness
PS1='\[\e[0;31m\]⚡\[\e[m\] \[\e[0;30m\]${PWD##*/}\[\e[39m\]\[\e[1;32m\]$(parse_git_branch)\[\e[m\] '
