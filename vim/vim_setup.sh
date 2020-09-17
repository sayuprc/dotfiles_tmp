#!/bin/bash

# Create Directories
[ ! -d ~/.vim ] && mkdir ~/.vim
[ ! -d ~/.vim/bundles ] && mkdir ~/.vim/bundles
[ ! -d ~/.vim/colors ] && mkdir ~/.vim/colors
[ ! -d ~/.vim/autoload] && mkdir ~/.vim/autoload
[ ! -d ~/.vim/src ] && mkdir ~/.vim/src
[ ! -d ~/.vim/colorschemes ] && mkdir ~/.vim/colorschemes

# Install dein installer and dein
cd 

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

sh installer.sh ~/.vim/bundles

# Install colorscheme
cd ~/.vim/colorschemes

[ ! -d ~/.vim/colorschemes/iceberg.vim ] && git clone https://github.com/cocopon/iceberg.vim.git

[ ! -d ~/.vim/colorschemes/vim-wombat-schme ] && git clone https://github.com/sheerun/vim-wombat-scheme.git

schemelist=`ls | awk '{print $1}'`

for item in $schemelist; do
	if [ -d  ~/.vim/colorschemes/$item/colors ]; then
		cp -a ~/.vim/colorschemes/$item/colors/* ~/.vim/colors/
	fi
	if [ -d  ~/.vim/colorschemes/$item/src ]; then
		cp -a ~/.vim/colorschemes/$item/src/* ~/.vim/src/
	fi
	if [ -d  ~/.vim/colorschemes/$item/autoload ]; then
		cp -a ~/.vim/colorschemes/$item/autoload/* ~/.vim/autoload/
	fi
done

cp ~/dotfiles/vim/.vimrc ~/.vimrc
