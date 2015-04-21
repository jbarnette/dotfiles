#!/bin/sh
#/ Link dotfiles.
#/ Usage: install.sh

set -e

ln -nfs ~/src/jbarnette/dotfiles/bash/main.sh ~/.profile
ln -nfs ~/src/jbarnette/dotfiles/gitconfig ~/.gitconfig
