#!/usr/bin/env bash

: ${VERSION:="1.10.1"}
: ${OS:="linux"}
: ${ARCH:="amd64"}

TARBALL="go$VERSION.$OS-$ARCH.tar.gz"
URL="https://dl.google.com/go/$TARBALL"

# remove existing go
sudo rm -rfv /usr/local/go

echo "Downloading Go Installer..."
cd /tmp
curl -fsSLO $URL

echo "Unpacking Go..."
sudo tar -C /usr/local -xzf $TARBALL

echo "Cleaning up..."
rm -rfv $TARBALL

echo "All done!"
