#!/usr/bin/bash

# FIRST UPDATE THE VIM SUBMODULE
git submodule update --init --recursive

ln -s .dotfiles/bash_profile ../.bash_profile
ln -s .dotfiles/dircolors ../.dircolors
ln -s .dotfiles/gitconfig ../.gitconfig
ln -s .dotfiles/zshrc ../.zshrc



cd vimrc/
git submodule update --init --recursive
cd ..
ln -s .dotfiles/vim/vimrc ../.vimrc
