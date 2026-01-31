#!/bin/bash
# Autoupdate for the morph

echo -e "\e[34m[*] Updating Aether-Sync rules and environments...\e[0m"


chmod +x aether-contributing.sh
chmod +x aether-personalized-ambient/*.sh


if [ ! -f "$PREFIX/bin/aether-sync" ]; then
    ln -s "$(pwd)/aether-sync" "$PREFIX/bin/aether-sync"
fi

echo -e "\e[32m[+] Rules updated successfully!\e[0m"
