#!/bin/bash

#install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#install liquidprompt
cd ~
git clone https://github.com/nojhan/liquidprompt.git

# vim
ln -sf `pwd`/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#zsh
ln -sf `pwd`/zshrc ~/.zshrc
