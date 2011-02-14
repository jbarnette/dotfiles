export DOTFILES=~/my/dotfiles

PATH=~/bin:$PATH:`tr '\n' : < $DOTFILES/bash/paths.txt`

export PATH=`ruby -e "print ENV['PATH'].split(':'). \
    reject { |p| p.nil? || p.empty? }.uniq. \
    select { |p| File.directory? File.expand_path(p) }.join ':'"`

. "$DOTFILES/bash/aliases.sh"
. "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
export VISUAL=$EDITOR

export ARCHFLAGS="-arch x86_64"
export JAVA_HOME=`/usr/libexec/java_home`
export P4CONFIG=.p4config
export PS1='$(__git_ps1 "[%s] ")\w\\$ '
export NODE_PATH="/usr/local/lib/node"
