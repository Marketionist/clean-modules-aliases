#!/bin/bash

SCRIPT_NAME="[clean-modules-aliases]:"

if [ -f ~/.bashrc ]; then
    echo "alias clean='
    npm cache clean && bower cache clean
    rm -rf node_modules/ build/ components/ generated/ .cache/
    '" >> ~/.bashrc

    echo "alias reinst='
    npm cache clean && bower cache clean
    rm -rf node_modules/ build/ components/ generated/ .cache/
    npm install && bower install
    '" >> ~/.bashrc

    source ~/.bashrc
    echo "$SCRIPT_NAME Added clean and reinst aliases to .bashrc"
else
    if [ -f ~/.bash_profile ]; then
        echo "alias clean='
        npm cache clean && bower cache clean
        rm -rf node_modules/ build/ components/ generated/ .cache/
        echo \"$SCRIPT_NAME Cleaned node and bower modules\"
        '" >> ~/.bash_profile

        echo "alias reinst='
        npm cache clean && bower cache clean
        rm -rf node_modules/ build/ components/ generated/ .cache/
        echo \"$SCRIPT_NAME Cleaned node and bower modules\"
        npm install && bower install
        '" >> ~/.bash_profile

        source ~/.bash_profile
        echo "$SCRIPT_NAME Added clean and reinst aliases to .bash_profile"
    else
        echo "$SCRIPT_NAME Files .bashrc and .bash_profile are missing, create one of them to add aliases"
    fi
fi
