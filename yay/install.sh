#!/bin/bash

# install the program
if command -v pacman &> /dev/null; then
    sudo pacman -S --needed git base-devel &&
    git clone https://aur.archlinux.org/yay.git &&
    cd yay &&
    makepkg -sirc &&
    cd .. &&
    rm -Rf ./yay
else
    echo "Unknown package manager or not installed"
fi
