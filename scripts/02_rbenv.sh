#!/usr/bin/env bash

source .helpers

apt() {
    sudo apt-get install rbenv ruby-build -y
}

aur() {
    yaourt-install rbenv-git
    yaourt-install ruby-install-git
}

if [[ "$(uname)" == "Darwin" ]]; then
    brew update
    rew install rbenv
else
  arch_or_deb aur apt
fi

rbenv init
