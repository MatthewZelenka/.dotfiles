#!/bin/bash

# install the program
if command -v apt-get &> /dev/null; then
    echo "APT package manager detected"
elif command -v yum &> /dev/null; then
    echo "YUM package manager detected"
elif command -v pacman &> /dev/null; then
    sudo pacman -S git 
elif command -v winget &> /dev/null; then
    echo "winget package manager detected" 
else
    echo "Unknown package manager or not installed"
fi
