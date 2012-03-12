git submodule update --init

ln -s ~/my/dotfiles/bash/main.sh ~/.profile
ln -s ~/.profile ~/.bash_profile
ln -s ~/.profile ~/.bashrc
ln -s ~/my/dotfiles/emacs.d ~/.emacs.d
ln -s ~/my/dotfiles/gemrc ~/.gemrc
ln -s ~/my/dotfiles/gitconfig ~/.gitconfig

. ~/.profile
