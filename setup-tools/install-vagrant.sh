#!/bin/bash

if ! command -v vagrant &> /dev/null; then
    echo "Vagrant could not be found, installing..."
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # Adjust based on your Linux distribution
        sudo apt-get update
        sudo apt-get install -y vagrant
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install --cask vagrant
    elif [[ "$OSTYPE" == "win32" ]]; then
        echo "Please install Vagrant from https://www.vagrantup.com/"
    fi
else
    echo "Vagrant is already installed."
fi
