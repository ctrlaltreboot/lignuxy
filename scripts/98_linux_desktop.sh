#!/usr/bin/env bash

# Symlink linux-desktop-configs/<file> to ~/.config/<type>/config

# turn on nullglob to get array of files without wonky use of ls
shopt -s nullglob
CONFIGS=(linux-desktop-configs/*)

# iterate through files array and symlink it to the $HOME directory
for C in ${CONFIGS[@]}; do
    APP=$(basename ${C})
    APP_CONFIG=$HOME/.config/$APP/config
    # remove existing configfile/config file links
    [[ -e $APP_CONFIG ]] && rm -rfv $APP_CONFIG
    # link config files here
    ln -snfv $(pwd)/$C $APP_CONFIG
done

# turn off nullglob
shopt -u nullglob
