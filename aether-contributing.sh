#!/bin/bash
# Aether-Sync Contribution Manager
# Folder: aether-personalized-ambient

CONTRIB_PATH="./aether-personalized-ambient"

function list_all() {
    echo -e "\e[1;34m--- AETHER-SYNC CONTRIBUTION MENU ---\e[0m"
    if [ -d "$CONTRIB_PATH" ]; then
        
        ls "$CONTRIB_PATH" | grep ".sh$" | sed 's/\.sh$//' | while read -r line; do
            echo -e "\e[33m$line\e[0m"
        done
    else
        echo -e "\e[31mError: Folder 'aether-personalized-ambient' not found!\e[0m"
        exit 1
    fi
}

case "$1" in
    "list")
        list_all
        ;;
    *)
        if [ -f "$CONTRIB_PATH/$1.sh" ]; then
            bash "$CONTRIB_PATH/$1.sh"
        else
            echo -e "\e[31mError: Environment '$1' not found in aether-personalized-ambient.\e[0m"
        fi
        ;;
esac
