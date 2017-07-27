#!/usr/bin/env bash

MISC_DIR=${HOME}/Downloads

URLS=(
http://www.levien.com/type/myfonts/Inconsolata.otf
https://github.com/chrissimpkins/Hack/releases/download/v2.020/Hack-v2_020-ttf.zip
https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
)

[[ ! -d ${MISC_DIR} ]] && mkdir -v ${MISC_DIR}

cd ${MISC_DIR}

for URL in ${URLS[@]}; do
    curl -fsSLO ${URL}
    echo "Finished downloading $(basename ${URL})"
done

# Clone some projects as well
if [[ $(uname) = "Darwin" ]]; then
  echo "Nothing to Git clone for a Mac this time."
else
  git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
fi
