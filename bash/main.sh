export PATH=`tr '\n' : < $DOTFILES/bash/paths.txt`

. "$DOTFILES/bash/git.sh"
. "$DOTFILES/bash/aliases.sh"

export PS1='$(__git_ps1 "[%s] ")\w\\$ '
export LD_LIBRARY_PATH=/opt/local/lib
export EDITOR=/usr/local/bin/emacsclient
