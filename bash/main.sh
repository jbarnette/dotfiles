export DOTFILES=~/my/dotfiles

source "$DOTFILES/bash/aliases.sh"
source "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

if [ -f "/opt/github/env.sh" ]
  then source "/opt/github/env.sh"
fi

if [ -f $HOME/src/app-env ]; then
  export PATH="$HOME/src/app-env/bin:$PATH"
  source "$HOME/src/app-env/share/app-ps1.sh"
fi

export EDITOR="atom --wait"
export NODE_NO_READLINE=1
export PATH=$HOME/bin:$PATH
export PS1='$(app-ps1 "%s ")$(__git_ps1 "[%s] ")\w\\$ '
export VISUAL=$EDITOR
