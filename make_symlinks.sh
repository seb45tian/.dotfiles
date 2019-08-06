#!/usr/bin/bash

# TODO: SAVE ALREADY EXISTING DOTFILES IN BACKUPFOLDER


# CREATE SYMLINKS TO DOTFILES IN HOME DIR
echo "Creating dotfiles..."
#ln -s .dotfiles/bash_profile ../.bash_profile
#ln -s .dotfiles/dircolors ../.dircolors
ln -s .dotfiles/gitconfig ../.gitconfig
echo "...done"


echo "Getting vimrc git submodule and submodules of vimrc.git..."
# FIRST GET THE VIMRC SUBMODULE
git submodule update --init --recursive
# CHANGE INTO VIMRC FOLDER AND GET SUBMODULES OF VIMRC.GIT
cd vimrc/
git submodule update --init --recursive
cd ..
ln -s .dotfiles/vimrc/vimrc ../.vimrc
ln -s .dotfiles/vimrc ../.vim
