#!/bin/bash
# Windows Environment for Aether-Sync
# Architectures: arm64-v8a, armeabi-v7a

echo -e "\e[33mStarting Windows CMD Emulation...\e[0m"


alias dir='ls -C --color=always'
alias cls='clear'
alias del='rm -i'
alias copy='cp -v'
alias move='mv -v'
alias type='cat'
alias ver='echo "Microsoft Windows [Version 10.0.19045.3208]"'
alias ipconfig='ifconfig || ip addr'
alias systeminfo='uname -a && uptime'


ARCH=$(getprop ro.product.cpu.abi)
echo "Architecture verified: $ARCH"


export PS1="C:\Users\Aether> "


echo "Commands enabled: dir, cls, del, copy, move, type, ver, ipconfig, systeminfo"


/bin/bash --norc
