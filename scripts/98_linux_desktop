#!/usr/bin/env bash

# Symlink linux-desktop-configs/<file> to ~/.config/<type>/config

# turn on nullglob to get array of files without wonky use of ls
shopt -s nullglob
CONFIGS=(linux-desktop-configs/*)
shopt -u nullglob

# iterate through files array and symlink it to the $HOME directory
for C in ${CONFIGS[@]}; do
    APP=$(basename ${C})
    APP_CONFIG=$HOME/.config/$APP/config
    APP_CONFIG_DIR=$HOME/.config/$APP
    # remove existing configfile/config file links
    [[ ! -d $APP_CONFIG_DIR ]] && mkdir -pv $APP_CONFIG_DIR
    [[ -e $APP_CONFIG ]] && rm -rfv $APP_CONFIG
    # link config files here
    ln -snfv $(pwd)/$C $APP_CONFIG
done
