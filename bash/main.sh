export DOTFILES=~/my/dotfiles

PATH=`tr '\n' : < $DOTFILES/bash/paths.txt`:$PATH

export PATH=`ruby -e "print ENV['PATH'].split(':').compact.uniq. \
    select { |p| File.directory? File.expand_path(p) }.join ':'"`

. "$DOTFILES/bash/aliases.sh"
. "$DOTFILES/bash/git.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export EDITOR=/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient
export VISUAL=$EDITOR

export GOROOT=$HOME/play/go
export GOOS=darwin
export GOARCH=amd64

export ARCHFLAGS="-arch x86_64"
export JAVA_HOME=`/usr/libexec/java_home`
export LD_LIBRARY_PATH=/opt/local/lib
export MANPATH=/opt/local/share/man:$MANPATH
export P4CONFIG=.p4config
export PS1='$(__git_ps1 "[%s] ")\w\\$ '

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
