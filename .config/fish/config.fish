rvm ruby-1.9.3
setenv EDITOR vim

set PATH /usr/local/sbin $PATH
set PATH /usr/local/bin $PATH

function fish_greeting
  echo -e " ,-_|\ \n/     \ \n\\_,-._/ \n     v"
end

alias dev="cd ~/Dev/"
alias bai="cd /Users/patrickmoody/verdigris/building.ai"
alias gs="git status"
alias gc="git commit -v"
alias gd="git diff"
alias ga="git add"
alias dev="cd ~/Dev/"

# Pass this a directory and it will search within each file
alias rar="grep -H -r --exclude-dir={log,.git,tmp,node_modules}"
