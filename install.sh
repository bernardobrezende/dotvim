#!/bin/bash

if [ -d ~/.vim.old ]; then
  rm -rf ~/.vim.old
fi

if [ -d ~/.vim ]; then
  mv ~/.vim ~/.vim.old
fi

echo Creating .vim directory...
mkdir ~/.vim

echo Initializing git submodules...
git submodule init

echo Updating git submodules...
git submodule update

echo Copying files...
cp -r * ~/.vim
cp vimrc ~/.vimrc

echo Done!
