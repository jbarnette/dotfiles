export DOTFILES=~/work/dotfiles
export PATH=`tr '\n' : < $DOTFILES/bash/paths.txt`

. "$DOTFILES/bash/git.sh"
. "$DOTFILES/bash/aliases.sh"

export EDITOR=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
export VISUAL=$EDITOR

export LD_LIBRARY_PATH=/opt/local/lib
export MANPATH=/opt/local/share/man:$MANPATH
export P4CONFIG=.p4config
export PS1='$(__git_ps1 "[%s] ")\w\\$ '
