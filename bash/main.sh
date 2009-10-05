export DOTFILES=~/work/dotfiles
export PATH=`tr '\n' : < $DOTFILES/bash/paths.txt`

. "$DOTFILES/bash/git.sh"
. "$DOTFILES/bash/aliases.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR=/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient
export VISUAL=$EDITOR

export JAVA_HOME=/Library/Java/Home
export LD_LIBRARY_PATH=/opt/local/lib
export MANPATH=/opt/local/share/man:$MANPATH
export P4CONFIG=.p4config
export PS1='$(__git_ps1 "[%s] ")\w\\$ '

if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
