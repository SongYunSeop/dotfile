#! /bin/bash

echo "=============================================="
echo "              Python                    "
echo "=============================================="
if [[ "$(which python)" == "/usr/local/bin/python" ]];
then
    echo "Already Installed Python!"
else
    echo "Install Python@2..."
    brew install python@2
fi
if [[ "$(which python3)" == "/usr/local/bin/python3" ]];
then
    echo "Already Installed Python!"
else
    echo "Install Python@3..."
    brew install python
fi

