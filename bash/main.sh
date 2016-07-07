export DOTFILES=~/src/jbarnette/dotfiles

if [ -s "$DOTFILES/bash/private.sh" ]; then
  source "$DOTFILES/bash/private.sh"
fi

export EDITOR="atom --wait"
export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/heroku/bin:$GOPATH/bin:$PATH
export PROMPT_COMMAND="set-terminal-title"
export PS1="♡ "
export SRCPATH=$HOME/src
export VISUAL=$EDITOR

for file in $DOTFILES/bash/initializers/*.sh; do
  source "$file"
done

if which hub > /dev/null; then
  alias git=hub
fi
