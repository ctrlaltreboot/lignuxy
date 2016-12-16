#!/bin/bash

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
