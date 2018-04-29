#!/usr/bin/env bash

DEFAULT_RUBY="2.3.3"

if [[ "$(uname)" == "Darwin" ]]; then
    brew update
    rew install rbenv
else
    sudo apt-get install rbenv ruby-build -y
fi

rbenv init
rbenv install ${DEFAULT_RUBY}
