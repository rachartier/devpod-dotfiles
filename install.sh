#!/usr/bin/env bash

sudo apt update

export DOTFILES_DOCKER=1
export GIT_CLONE_METHOD=https
export TERM=xterm

if [ -d "$HOME/.cfg" ]; then
    rm -rf "$HOME/.cfg"
fi

if [ -d "$HOME/.zshrc" ]; then
    rm -rf "$HOME/.zshrc"
fi

bash -c "$(curl -fsSL https://raw.githubusercontent.com/rachartier/dotfiles/main/.config/dot-manager/first_install.sh)"
