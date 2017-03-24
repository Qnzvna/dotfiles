function bootstrap_vim {
    # Install vim-plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # Create symlink for .vimrc
    ln -s ~/.vimrc ./vimrc
}

bootstrap_vim
