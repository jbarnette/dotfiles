git submodule update --init

ln -s ~/my/dotfiles/bash/main.sh ~/.profile
ln -s ~/.profile ~/.bashrc
ln -s ~/.profile ~/.bash_profile
ln -s ~/my/dotfiles/emacs ~/.emacs.d
ln -s ~/my/dotfiles/hoe/hoerc ~/.hoerc
ln -s ~/my/dotfiles/hoe/template ~/.hoe_template

. ~/.profile

