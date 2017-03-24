#!/bin/bash
system=""
if [ "$(uname)" == "Darwin" ]; then
    system="mac"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    system="linux"
fi

# Add system recognition check

function bootstrap_bash {
    mkdir -p ~/.bash
    ln -s ~/.bash/bash_others "$(pwd)/bash_others"

    if [ "$system" == "linux" ]; then
        ln -s ~/.bashrc "$(pwd)/bashrc"
    elif [ "$system" == "mac" ]; then
        ln -s ~/.bash_profile "$(pwd)/bashrc"
    fi
}

function bootstrap_vim {
    # Install vim-plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # Create symlink for .vimrc
    ln -s ~/.vimrc "$(pwd)/vimrc"
}

bootstrap_bash
bootstrap_vim
