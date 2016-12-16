#!/bin/bash

[[ -d $(pwd)/homebrew ]] && cd homebrew
source iHomebrew.sh

docker_machine() {
  docker-machine create --driver virtualbox default
}

ohmyzsh() {
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

rvm() {
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
  curl https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable && \
  source ~/.rvm/scripts/rvm &&

  WATRVM=$(type rvm | head -n 1 | cut -d '' -f 4)

  if [[ "${WATRVM}" == "function" ]]; then
    echo "Listing known Rubies"
    rvm list known
  else
    echo "Something went wrong. Cheggit."
  fi
}

vundler() {
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
  vim +PluginInstall +qall
}

misc() {
  MISC_DIR=${HOME}/Downloads/miscs
  URLS=(
  http://www.levien.com/type/myfonts/Inconsolata.otf
  )

  [[ ! -d ${MISC_DIR} ]] && mkdir -v ${MISC_DIR}

  for URL in ${URLS[@]}; do
    cd ${MISC_DIR} && curl -fsSLO ${URL} && echo "Downloaded ${URL}"
  done
}

docker_machine
ohmyzsh
rvm
vundler
misc
