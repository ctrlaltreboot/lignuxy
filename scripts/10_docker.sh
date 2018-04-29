#!/usr/bin/env bash

DIST=xenial

echos() {
    echo $1
    sudo "${@:2}"
    echo
}

update() {
    echos "Updating package index" apt-get update
}

ask() {
    local Q="${1}"
    while true; do
        read -p "${Q}" ANS
        case $ANS in
            [yY]* )
                break
                ;;

            [nN]* )
                exit
                ;;
            * )
                echo "[Y/y] or [N/n] only."
                ;;
          esac
   done
}

echos "Running clean-up of old packages" apt-get remove docker docker-engine docker.io
update
echos "Installing needed packages"  apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echos "Verifying key fingerprint..." apt-key fingerprint 0EBFCD88
ask "Does this look alright? "

echos "Adding Docker CE repos" add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $DIST \
      stable"

update
echos "Installing latest Docker CD" apt-get install docker-ce

ME=$(whoami)
echos "Adding $ME to docker group" gpasswd -a $ME docker


echos "Enabling docker service startup" systemctl enable docker.service
echos "Restarting docker service"  systemctl restart docker.service

echo "Finished installing Docker CE"
