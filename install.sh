#!/bin/bash

ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim ~/.vim/bundle
cp -r ~/dotfiles/.vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
cp -r ~/dotfiles/.vim/colors/ ~/.vim/colors/
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/liquidprompt/liquidprompt ~/.liquidprompt

vim +PluginInstall +qall
source ~/.bashrc
