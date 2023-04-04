#! /bin/bash

echo "=============================================="
echo "              Tmux                    "
echo "=============================================="
brew install tmux reattach-to-user-namespace
ln -sf ${PWD}/tmux/tmux.conf ~/.tmux.conf
ln -sf ${PWD}/bin/tat ~/.local/bin/tat

