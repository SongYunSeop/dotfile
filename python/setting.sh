#! /bin/bash

echo "=============================================="
echo "              Python                    "
echo "=============================================="

DEFAULT_PYTHON_VERSION=3.11.1

if [ -z "$(which pyenv)" ];
then
    echo "Install Pyenv..."
    brew install pyenv
else
    echo "Already Installed Pyenv!"
fi

pyenv install $DEFAULT_PYTHON_VERSION
pyenv global $DEFAULT_PYTHON_VERSION

eval "$(pyenv init -)"

echo "$(python --version) is Installed!"
