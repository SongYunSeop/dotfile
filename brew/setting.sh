#! /bin/bash

if [[ "$(uname -s)" == "Darwin" ]];
then
    echo "=============================================="
    echo "              Homebrew                    "
    echo "=============================================="
    if [[ "$(which brew)" == "/usr/local/bin/brew" ]];
    then
        echo "Already Installed Homebrew!"
    else
        echo "Install Homebrew[https://brew.sh/index_ko.html]..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
else
    echo "=============================================="
    echo "              You're not OSX!                    "
    echo "=============================================="
fi

