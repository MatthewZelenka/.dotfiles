#!/bin/bash

# install the program
if command -v apt-get &> /dev/null; then
    echo "APT package manager detected"
elif command -v yum &> /dev/null; then
    echo "YUM package manager detected"
elif command -v pacman &> /dev/null; then
    sudo pacman -S tmux 
elif command -v winget &> /dev/null; then
    echo "winget package manager detected" 
else
    echo "Unknown package manager or not installed"
fi

# symbolic-link of config
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # linux
    ln -sf $PWD/tmux ~/.config/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    echo $OSTYPE
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    echo $OSTYPE
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    ln -sf "$PWD\\nvim" "$USERPROFILE\\AppData\\Local\\" 
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    echo $OSTYPE
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
    echo $OSTYPE
else
    echo "Unknown:" $OSTYPE
fi
