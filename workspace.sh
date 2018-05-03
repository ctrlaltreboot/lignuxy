#!/usr/bin/env bash

set -e

: ${SCRIPTDIR:=scripts}

ask() {
    local Q="${1}"
    while true; do
        read -p "${Q}" ANS
        case $ANS in
            [aA]ll|[aA]* )
                all
                break
                ;;

            [cC]hoose|[cC]* )
                choose
                break
                ;;
            * )
                echo "Acceptable inputs: [A/a]ll or [C/c]hoose."
                ;;
          esac
   done
}

all() {
    shopt -s nullglob
    local SCRIPTS=($SCRIPTDIR/*)
    shopt -u nullglob

    for SCRIPT in ${SCRIPTS[@]}; do
        echo "Running $SCRIPT"
        bash $SCRIPT
    done
}

choose() {
    echo "Here are available scripts to run:"
    declare -A SCRIPTMAP
    shopt -s nullglob
    local SCRIPTS=($SCRIPTDIR/*)
    shopt -u nullglob
    local C=0
    for SCRIPT in ${SCRIPTS[@]}; do
        SCRIPTMAP[$C]=$SCRIPT
        ((C=C+1))
    done
    for K in ${!SCRIPTMAP[@]}; do
        echo "[$K]: $(basename ${SCRIPTMAP[$K]})"
    done
    read -p "Please enter the number of the script you want to run: " OPT
    if [[ "${SCRIPTMAP[$OPT]+foobar}" ]]; then
        echo "Running: ${SCRIPTMAP[$OPT]}"
        bash "${SCRIPTMAP[$OPT]}"
    else
        echo "Wrong or non-existent choice. Bye."
        exit
    fi
}

echo "Hello, Welcome to the workspace setup script."
ask "You can run [a]ll the scripts in $SCRIPTDIR or [c]hoose from a list > "
