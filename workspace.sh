#!/usr/bin/env bash

: ${SCRIPTDIR:=scripts}

ask2run() {
    local Q="${1}"
    local RUN=${2}
    while true; do
        read -p "${Q}" ANS
        case $ANS in
            [yY]* )
                $RUN
                break
                ;;

            [nN]* )
                break
                ;;
            * )
                echo "Answer: Y/y or N/n."
                ;;
          esac
   done
}

runall() {
    shopt -s nullglob
    local SCRIPTS=($SCRIPTDIR/*)

    for SCRIPT in ${SCRIPTS[@]}; do
        echo "Running $SCRIPT"
        bash $SCRIPT
    done
    shopt -u nullglob
}

chooserun() {
    echo "Here are available scripts to run:"
    shopt -s nullglob
    declare -A SCRIPTMAP
    local SCRIPTS=($SCRIPTDIR/*)
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
    shopt -u nullglob
}

echo "Hello, Welcome to the workspace setup script."

echo "I will ask you some questions now..."

# Run all scripts
ask2run "Do you want to run all the scripts in $SCRIPTDIR? " runall

# Ask to choose
ask2run "Do you want to run a script from a list of choices? " chooserun
