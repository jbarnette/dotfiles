git submodule update --init

ln -nfs ~/my/dotfiles/bash/main.sh ~/.profile
ln -nfs ~/.profile ~/.bashrc
ln -nfs ~/.profile ~/.bash_profile
ln -nfs ~/my/dotfiles/emacs ~/.emacs.d
ln -nfs ~/my/dotfiles/hoe/hoerc ~/.hoerc
ln -nfs ~/my/dotfiles/hoe/template ~/.hoe_template

. ~/.profile
