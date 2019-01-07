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
pip3 install --user jedi

cat ./vimrc > ~/.vimrc

printf "\n"

echo "Appending 'stty -ixon' to .bashrc to disable terminal freezing with C-s shortcut..."
echo stty -ixon >> ~/.bashrc
echo "Done."

while true; do
	read -p "Do you wish to add the alias 'v' for GVim (yes/no)? " yn
	case $yn in
		[Yy]* ) echo 'alias v=gvim' >> ~/.bashrc; break;;
		[Nn]* ) exit;;
		* ) echo "Please answer with yes or no.";;
	esac
done

echo "Installation complete. Don't forget to run :PluginInstall after your launched Vim."

