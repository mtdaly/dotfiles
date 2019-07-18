#!/bin/bash

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/liquidprompt/liquidprompt ~/.liquidprompt

vim +PluginInstall +qall
source ~/.bashrc
