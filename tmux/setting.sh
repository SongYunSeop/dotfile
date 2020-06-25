#! /bin/bash

echo "=============================================="
echo "              Tmux                    "
echo "=============================================="
brew install reattach-to-user-namespace
ln -sf ${PWD}/tmux/tmux.conf ~/.tmux.conf
ln -sf ${PWD}/bin/tat /usr/local/bin/tat

