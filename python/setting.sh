#! /bin/bash

echo "=============================================="
echo "              Python                    "
echo "=============================================="
DEFAULT_PYTHON_VERSION=3.8.3
brew install pyenv

pyenv install $DEFAULT_PYTHON_VERSION
pyenv global $DEFAULT_PYTHON_VERSION

eval "$(pyenv init -)"

echo "$(python --version) is Installed!"
