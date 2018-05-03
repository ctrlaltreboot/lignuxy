#!/usr/bin/env bash

source .helpers

PKGS=()

for P in ${PKGS[@]}; do
    yaourt-install $P
done
