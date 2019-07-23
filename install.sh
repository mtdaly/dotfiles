#!/bin/bash

rm -rf  ~/.vimrc ~/.bashrc ~/.vim ~/.liquidprompt

ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r ~/dotfiles/colors/ ~/.vim/colors/
ln -s ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/liquidprompt/liquidprompt ~/.liquidprompt

vim +PluginInstall +qall
source ~/.bashrc
