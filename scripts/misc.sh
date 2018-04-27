#!/usr/bin/env bash

# Clone some projects as well
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Nothing to Git clone for a Mac this time."
else
  git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
fi
