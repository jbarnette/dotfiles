export DOTFILES=~/my/dotfiles

source "$DOTFILES/bash/aliases.sh"
source "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
export    PS1='$(__git_ps1 "[%s] ")\w\\$ '
export VISUAL=$EDITOR

if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

export NODE_NO_READLINE=1
export PATH=node_modules/.bin:$PATH

eval "$(rbenv init -)"
