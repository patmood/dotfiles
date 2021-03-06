# Motherland
function fish_greeting
  echo -e " ,-_|\ \n/     \ \n\\_,-._/ \n     v"

  # Show todo list
  python ~/dodis/dodis.py
end

# Set the prompt
function fish_prompt

  function _git_branch_name
    echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
  end

  function _is_git_dirty
    echo (git status -s --ignore-submodules=dirty ^/dev/null)
  end

  # Print Directory
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  # Print Git info
  set -l green (set_color -o green)
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)
    set git_color $green
    if [ (_is_git_dirty) ]
      set git_color $red
    end
    echo -n "$git_color ($git_branch)"
  end

  # Finish up
  echo -n " "
  set_color normal
end

setenv EDITOR vim

set PATH /usr/local/sbin $PATH
set PATH /usr/local/bin $PATH
set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH

# rbenv shit for personal
set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)

rvm ruby-2.0

# Aliases
alias tmux="env TERM=screen-256color-bce tmux"
alias dev="cd ~/Dev/"
alias do="python ~/dodis/dodis.py"
alias rm="trash"

alias gs="git status"
alias gc="git commit -v"
alias gd="git diff"
alias ga="git add"

# Pass this a directory and it will search within each file
alias rar="grep -H -r --exclude-dir={log,.git,tmp,node_modules}"

# Run function to load local variables
local

