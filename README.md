setdev
======

Sets up a machine for development use.

What it *tries* to do
---------------------

On an Antergos (Arch Linux)  Machine
* Symlinks the included dotfiles to `$HOME/.<file>`
* Install vundler and install vim plugins.
* Install rbenv.
* Install ohmyzsh.
* Install ansible.

Optionally on OSX Machines:
* Install xcode build tools.
* Install Homebrew and then CLI and Cask apps via the included
  Brewfile.

Usage
-----

* To run the complete setup, run `make`.
* To run a specific target, list the available targets `make list`.
  Pick the appropriate target.
