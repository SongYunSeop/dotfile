#! /bin/bash

SHELL=$SHELL

echo "=============================================="
echo "              Oh My Zsh                   "
echo "=============================================="

if [[ $SHELL == *"zsh"* ]];
then
    echo "Already Installed Oh My Zsh!"
else
    echo "Install Oh My Zsh[https://github.com/robbyrussell/oh-my-zsh]..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
