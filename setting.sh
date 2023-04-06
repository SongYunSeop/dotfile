#! /bin/bash

if [[ "$(uname -s)" != "Darwin" ]];
then
    echo "=============================================="
    echo "              You're not using OSX.             "
    echo "=============================================="
    exit
fi

# Homebrew
source ${PWD}/brew/setting.sh

# Font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# zsh
source ${PWD}/zsh/setting.sh
ln -sf ${PWD}/zsh/zshrc ~/.zshrc

# Python
source ${PWD}/python/setting.sh

# Vim
source ${PWD}/vim/setting.sh

# tmux.conf
source ${PWD}/tmux/setting.sh

# keyboard
source ${PWD}/keyboard/setting.sh

echo DONE🎉🎉🎉
