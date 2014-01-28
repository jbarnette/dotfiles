if [ -f "/opt/boxen/env.sh" ]
  then source "/opt/boxen/env.sh"
fi

export DOTFILES=~/my/dotfiles

source "$DOTFILES/bash/functions.sh"

if [ -s "$DOTFILES/bash/private.sh" ]; then
  source "$DOTFILES/bash/private.sh"
fi

export EDITOR="atom --wait"
export GOPATH=$HOME/go
export NODE_NO_READLINE=1
export PATH=$HOME/bin:$GOPATH/bin:$PATH
export PROMPT_COMMAND="set-terminal-title"
export PS1="❤ "
export SRCPATH=$HOME/src
export VISUAL=$EDITOR
