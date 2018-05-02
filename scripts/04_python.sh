#!/usr/bin/env bash

source .helpers

deb() {
    sudo apt-get update && sudo apt-get install \
    build-essential \
    libssl-dev \
    libffi-dev \
    python-dev \
    python-pip \
    python-setuptools \
    python-virtualenv -y
}

arch() {
    sudo pacman -S --needed --noconfirm \
    python-pip \
    python-setuptools \
    python-virtualenv
}

arch_or_deb arch deb

sudo pip install --upgrade pip
