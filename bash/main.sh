export PATH=`tr '\n' : < $DOTFILES/bash/paths.txt`

. "$DOTFILES/bash/git.sh"
export PS1='$(__git_ps1 "[%s] ")\w\\$ '