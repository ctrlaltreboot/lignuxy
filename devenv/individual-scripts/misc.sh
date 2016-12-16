#!/bin/bash

MISC_DIR=${HOME}/Downloads
URLS=(
http://www.levien.com/type/myfonts/Inconsolata.otf
https://github.com/chrissimpkins/Hack/releases/download/v2.020/Hack-v2_020-ttf.zip
)

[[ ! -d ${MISC_DIR} ]] && mkdir -v ${MISC_DIR}

for URL in ${URLS[@]}; do
  cd ${MISC_DIR} && curl -fsSLO ${URL} && echo "Downloaded ${URL}"
done

# clone some projects as well
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
