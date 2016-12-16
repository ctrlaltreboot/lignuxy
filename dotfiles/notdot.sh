#!/usr/bin/env bash

# turn on nullglob to get array of files without wonky use of ls
shopt -s nullglob
DOTFILES=(dot-*)

# iterate through dot-* files array in $DF and symlink it to the $HOME directory
for DF in ${DOTFILES[@]}; do
  # remove dot- prefix
  DOTFILE=$HOME/.${DF#dot-}
  # remove existing dot files/links
  [[ -e $DOTFILE ]] && rm -rfv $DOTFILE
  # link dotfiles here
  ln -snfv $(pwd)/$DF $DOTFILE
done

# turn off nullglob
shopt -u nullglob
