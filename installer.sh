#!/bin/sh
echo Trying to installing Vundle...

currentDirectory=$PWD

# Installs Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ] ; then
	echo Installing Vundle...
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo Vundle already installed! Trying to update it...
	cd ~/.vim/bundle/Vundle.vim
	git pull https://github.com/VundleVim/Vundle.vim.git
	cd $currentDirectory
fi

# Installs Jedi (Autocompletion for Python)
pip install jedi

cat ./vimrc > ~/.vimrc

printf "\n\n"
echo "Installation complete. Don't forget to run :PluginInstall after your launched Vim."
