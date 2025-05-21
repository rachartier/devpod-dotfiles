#!/bin/bash

if ! [ -d "$HOME/.cfg" ]; then
    sudo apt-get update

    export DOTFILES_DOCKER=1
    export GIT_CLONE_METHOD=https
    export TERM=xterm

    sudo apt-get install -y curl

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/rachartier/dotfiles/main/.config/dot-manager/first_install.sh)"
fi
