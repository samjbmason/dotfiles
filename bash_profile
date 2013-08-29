export PATH="/usr/local/bin:/usr/local/share/npm/bin:$PATH"

## Git branching in terminal
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
## Rbenv shims and autocomplete
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## Aliases
alias dotfiles='cd ~/.dotfiles'
alias sites='cd ~/Sites'
alias maison='cd ~/Sites/maison.io'
alias gthr='cd ~/Sites/gthr'

## Fucking-ay cool terminal hotness
PS1='\[\e[0;31m\]⚡\[\e[m\] \[\e[0;30m\]${PWD##*/}\[\e[39m\]\[\e[1;32m\]$(parse_git_branch)\[\e[m\] '
