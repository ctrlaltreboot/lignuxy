#!/usr/bin/env bash

MISC_DIR=${HOME}/Downloads

REPOS=(
https://github.com/sigurdga/gnome-terminal-colors-solarized.git
)

# Clone
cd $MISC_DIR

for REPO in ${REPOS[@]}; do
    git clone $REPO
    echo "Finished cloning ${REPO}"
done
