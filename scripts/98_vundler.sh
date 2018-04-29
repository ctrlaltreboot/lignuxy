#!/usr/bin/env bash

VIM_BUNDLE="~/.vim/bundle"

[[ ! -e $VIM_BUNDLE ]] && rm -rfv $VIM_BUNDLE && mkdir -pv $VIM_BUNDLE
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
