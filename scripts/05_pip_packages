#!/usr/bin/env bash

PIPS=(ansible awscli)

for PIP in ${PIPS[@]}; do
    echo "Installing $PIP via pip"
    pip install $PIP --upgrade --user
    echo "$PIP installation successful"
done
