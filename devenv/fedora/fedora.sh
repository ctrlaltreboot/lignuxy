#!/usr/bin/env bash

# rpm fusion
sudo rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-24.noarch.rpm
sudo rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-24.noarch.rpm

# update
# sudo dnf update -y

# install packages
sudo dnf install -y\
# media
vlc\
# terminal apps
tmux\
feh\
the_silver_searcher\
