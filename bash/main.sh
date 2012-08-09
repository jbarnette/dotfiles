export DOTFILES=~/my/dotfiles

source "$DOTFILES/bash/aliases.sh"
source "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR="emacsclient"
export NODE_NO_READLINE=1
export PATH=$HOME/bin:$PATH
export PS1='$(__git_ps1 "[%s] ")\w\\$ '
export VISUAL=$EDITOR

if [ -f "/opt/github/env.sh" ]
  then source "/opt/github/env.sh"
fi
