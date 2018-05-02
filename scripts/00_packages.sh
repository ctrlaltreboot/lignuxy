#!/usr/bin/env bash

arch_pkd() {
	sudo pacman -Syu
	sudo pacman -S --noconfirm --needed vim \
	openssh \
	zsh \
	tmux \
	terminator \
	autojump
	the_silver_searcher \
	networkmanager-strongswan strongswan \
        vim cowsay cowsay-off \
	redshift redshift-gtk \
	fortunes fortune-mod fortunes-off \
	fonts-powerline i3status suckless-tools \
	i3lock xbacklight feh conky lxappearance \
	scrot unclutter \
}

deb_pkg() {
	sudo apt-get update -y
	sudo apt-get install -y \
	vim ssh zsh \
	tmux terminator autojump  \
	silversearcher-ag cowsay cowsay-off \
	fortunes fortune-mod fortunes-off \
	strongswan-nm strongswan \
	redshift redshift-gtk \
	i3 fonts-powerline i3status suckless-tools \
	i3lock xbacklight feh conky lxappearance \
	scrot compton unclutter \
	pasystray paman paprefs pavumeter pulseaudio-module-zeroconf
}

wat() {
	which apt-get &> /dev/null
        APT=$?
        which pacman &> /dev/null
        PAC=$?
	if (( $APT < $PAC )); then
		deb_pkg
	elif (( $PAC < $APT )); then
		apt_pkg
	fi
}

wat
