setdev
======

Sets up a Linux machine

What it *tries* to do
---------------------
On an Debian/Ubuntu and most of its derivatives.
* Install packages
* Install vundler and install vim plugins
* Install rbenv
* Install ohmyzsh
* Install ansible
* Install Go
* Install Additional Fonts
* Symlinks the included dotfiles to `$HOME/.<file>`

Usage
-----
```
./workspace.sh

```

This script will let you choose to run all the scripts in `scripts` or
choose a specific script to run.

Deprecations
------------
macOS support is to be deprecated. `macos` directory is for posterity.
