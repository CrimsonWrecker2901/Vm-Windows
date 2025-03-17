#!/bin/bash

if ! command -v VBoxManage &> /dev/null; then
    echo "VirtualBox could not be found, installing..."
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt-get update
        sudo apt-get install -y virtualbox
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install --cask virtualbox
    elif [[ "$OSTYPE" == "win32" ]]; then
        echo "Please install VirtualBox from https://www.virtualbox.org/"
    fi
else
    echo "VirtualBox is already installed."
fi
