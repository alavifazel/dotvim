#!/bin/sh
echo "Installing the config..."

# Installs Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat ./vimrc > ~/.vimrc

echo "Installation complete. Don't forget to run :PluginInstall first time you open it."
