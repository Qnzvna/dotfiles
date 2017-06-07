#!/bin/bash
system=""
if [ "$(uname)" == "Darwin" ]; then
    system="mac"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    system="linux"
fi

function bootstrap_bash {
    echo "Bootstraping bashrc files..."
    mkdir -p ~/.bash
    ln -f -s "$(pwd)/bash_others" ~/.bash/bash_others
    ln -f -s "$(pwd)/bash.linux" ~/.bash/bash.system

    if [ "$system" == "linux" ]; then
        if [ -f ~/.bashrc ]; then
            mv ~/.bashrc ~/bashrc.backup
        fi
        ln -s "$(pwd)/bashrc" ~/.bashrc
    elif [ "$system" == "mac" ]; then
        if [ -f ~/.bash_profile ]; then
            mv ~/.bash_profile ~/bash_profile.backup
        fi
        ln -s "$(pwd)/bashrc" ~/.bash_profile
    fi
    echo "Done."
}

function bootstrap_vim {
    echo "Bootstraping vim files"
    # Install vim-plug
    if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi
    # Create symlink for .vimrc
    if [ -f ~/.vimrc ]; then
        mv ~/.vimrc ~/vimrc.backup
    fi
    ln -s "$(pwd)/vimrc" ~/.vimrc
    echo "Done."
}

function bootstrap_tmux {
    echo "Bootstraping tmux files"
    if [ -f ~/.tmux.conf ]; then
        mv ~/.tmux.conf ~/tmux.backup
    fi
    ln -s "$(pwd)/tmux.conf" ~/.tmux.conf
    echo "Done."
}

echo "Bootstraping dotfiles into machine."
bootstrap_bash
bootstrap_vim
