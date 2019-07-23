#!/bin/bash

rm -rf  ~/.vimrc ~/.bashrc ~/.vim ~/.liquidprompt

mkdir ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
cp -r ~/dotfiles/colors/ ~/.vim/colors/
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

vim +PluginInstall +qall
source ~/.bashrc
