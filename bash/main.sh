export PATH=$HOME/bin:$PATH
export SRCDIR=$HOME/src/github.com
export DOTFILES=$SRCDIR/jbarnette/dotfiles

if [ -s "$DOTFILES/bash/private.sh" ]; then
  source "$DOTFILES/bash/private.sh"
fi

for file in $DOTFILES/bash/initializers/*.sh; do
  source "$file"
done
