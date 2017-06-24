#!/usr/bin/bash

# FIRST UPDATE THE VIM SUBMODULE
git submodule update --init --recursive

ln -s bash_profile ../.bash_profile
ln -s dircolors ../.dircolors
ln -s gitconfig ../.gitconfig
ln -s zshrc ../.zshrc



cd vimrc/
git submodule update --init --recursive
cd ..
ln -s vim/vimrc ../.vimrc
