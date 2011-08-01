export DOTFILES=~/my/dotfiles

source "$DOTFILES/bash/aliases.sh"
source "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"
export VISUAL=$EDITOR

export ARCHFLAGS="-arch x86_64"
export JAVA_HOME=`/usr/libexec/java_home`
export  P4CONFIG=.p4config
export       PS1='$(__git_ps1 "[%s] ")\w\\$ '
export NODE_PATH="/usr/local/lib/node"

eval `/usr/libexec/path_helper -s`
export PATH=node_modules/.bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
