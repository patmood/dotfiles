#add git branch to terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1 # add this for colors!
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:$PATH
export PGHOST=localhost

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# List of handy color escape sequences, properly escaped for Bash so they
# don't fuck up your line wraps.

txtblk='\[\033[0;30m\]' # Black - Regular
txtred='\[\033[0;31m\]' # Red
txtgrn='\[\033[0;32m\]' # Green
txtylw='\[\033[0;33m\]' # Yellow
txtblu='\[\033[0;34m\]' # Blue
txtpur='\[\033[0;35m\]' # Purple
txtcyn='\[\033[0;36m\]' # Cyan
txtwht='\[\033[0;37m\]' # White
bldblk='\[\033[1;30m\]' # Black - Bold
bldred='\[\033[1;31m\]' # Red
bldgrn='\[\033[1;32m\]' # Green
bldylw='\[\033[1;33m\]' # Yellow
bldblu='\[\033[1;34m\]' # Blue
bldpur='\[\033[1;35m\]' # Purple
bldcyn='\[\033[1;36m\]' # Cyan
bldwht='\[\033[1;37m\]' # White
undblk='\[\033[4;30m\]' # Black - Underline
undred='\[\033[4;31m\]' # Red
undgrn='\[\033[4;32m\]' # Green
undylw='\[\033[4;33m\]' # Yellow
undblu='\[\033[4;34m\]' # Blue
undpur='\[\033[4;35m\]' # Purple
undcyn='\[\033[4;36m\]' # Cyan
undwht='\[\033[4;37m\]' # White
bakblk='\[\033[40m\]'   # Black - Background
bakred='\[\033[41m\]'   # Red
badgrn='\[\033[42m\]'   # Green
bakylw='\[\033[43m\]'   # Yellow
bakblu='\[\033[44m\]'   # Blue
bakpur='\[\033[45m\]'   # Purple
bakcyn='\[\033[46m\]'   # Cyan
bakwht='\[\033[47m\]'   # White
txtrst='\[\033[m\]'   # Text Reset

export PS1="$txtylw\w>$txtgrn\$(parse_git_branch)$txtrst "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias dbc='cd ~/Dev/DBC/'
alias dev='cd ~/Dev/'
alias hackdrop='ssh root@192.241.213.89'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

echo -e " ,-_|\ \n/     \ \n\\_,-._/ \n     v"
