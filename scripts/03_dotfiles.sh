#!/usr/bin/env bash

# Symlink dotfiles/<dotfile> to ~/.<dotfile>

# turn on nullglob to get array of files without wonky use of ls
shopt -s nullglob
DOTFILES=(dotfiles/*)
shopt -u nullglob

# iterate through files array and symlink it to the $HOME directory
for F in ${DOTFILES[@]}; do
    D=$(basename ${F})
    DOTFILE=$HOME/.${D}
    # remove existing dotfiles/links
    [[ -e $DOTFILE ]] && rm -rfv $DOTFILE
    # link dotfiles here
    ln -snfv $(pwd)/$F $DOTFILE
done
