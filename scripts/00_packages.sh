#!/usr/bin/env bash

source $(dirname $0)/.helpers

pac_pkg() {
    sudo pacman -Syu
    sudo pacman -S --noconfirm --needed \
    vim openssh zsh \
    tmux terminator \
    autojump the_silver_searcher \
    networkmanager-strongswan strongswan \
    cowsay cowfortune fortune-mod \
    powerline-fonts i3status \
    i3lock feh conky scrot unclutter \
    archey3 baobab bleachbit catfish clementine \
    conky curl redshift python python-pip git yaourt \
    docker lsof ledger terraform keepassxc
    }

apt_pkg() {
    sudo apt-get update -y
    sudo apt-get install -y \
    vim ssh zsh \
    tmux terminator autojump  \
    silversearcher-ag cowsay cowsay-off \
    fortunes fortune-mod fortunes-off \
    strongswan-nm strongswan \
    redshift redshift-gtk \
    i3 fonts-powerline i3status suckless-tools \
    i3lock xbacklight feh conky lxappearance \
    scrot compton unclutter \
    pasystray paman paprefs pavumeter pulseaudio-module-zeroconf
}

arch_or_deb pac_pkg apt_pkg
