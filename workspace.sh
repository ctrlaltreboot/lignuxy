#!/usr/bin/env bash

: ${SCRIPTDIR:=scripts}
: ${ANSIBLE:=n}
: ${MISC:=y}
: ${ADDTL:=y}
: ${KEYBASE:=y}
: ${OHMYZSH:=y}
: ${RBENV:=y}
: ${VUNDLER:=y}
: ${DOTFILES:=y}
: ${FONTS:=y}

[[ "$ADDTL" -eq "y" ]] && sh $SCRIPTDIR/addtl.sh
[[ "$VUNDLER" -eq "y" ]] && $SCRIPTDIR/vundler.sh
[[ "$RBENV" -eq "y" ]] && $SCRIPTDIR/rbenv.sh
[[ "$ANSIBLE" -eq "y" ]] && $SCRIPTDIR/ansible.sh
[[ "$KEYBASE" -eq "y" ]] && $SCRIPTDIR/keybase.sh
[[ "$MISC" -eq "y" ]] && $SCRIPTDIR/misc.sh
[[ "$DOTFILES" -eq "y"]] && $SCRIPTDIR/dotfiles.sh
[[ "$FONTS" -eq "y" ]] && $SCRIPTDIR/fonts.sh
[[ "$OHMYZSH" -eq "y" ]] && $SCRIPTDIR/ohmyzsh.sh
