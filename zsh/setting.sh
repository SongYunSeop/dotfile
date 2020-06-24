#! /bin/bash

SHELL=$SHELL

echo "=============================================="
echo "                  Oh My Zsh                   "
echo "=============================================="

if [[ $SHELL == *"zsh"* ]];
then
    echo "Already Installed Oh My Zsh!"
else
    echo "Install Oh My Zsh[https://github.com/robbyrussell/oh-my-zsh]..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    brew install zsh-syntax-highlighting zsh-autosuggestions
fi
