#! /bin/bash

echo "=============================================="
echo "                      Vim                     "
echo "=============================================="
while true; do
    read -p "Do you want to install Neovim? [y/n]" yn
    case $yn in
        [Yy]* ) VIM="NEOVIM"; break;;
        [Nn]* ) VIM="VIM"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

if [[ $VIM == "NEOVIM" ]];
then
    if [[ "$(which nvim)" == "/usr/local/bin/nvim" ]];
    then
        echo "Already Installed NeoVim!"
    else
        echo "Install NeoVim..."
        brew install neovim
        pip install neovim
    fi

    VIM_PLUG=${HOME}/.local/share/nvim/site/autoload/plug.vim

    if [ -e "$VIM_PLUG" ];
    then
        echo "Already Installed Vim-Plug"
    else
        echo "Install vim-plug[https://github.com/junegunn/vim-plug] for Neovim"
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi

    echo "Create Symbolic link vimrc"
    sed -i -- 's/~\/.vimrc/~\/.config\/nvim\/init.vim/g' ${PWD}/vim/vimrc
    ln -sf ${PWD}/vim/vimrc ${HOME}/.config/nvim/init.vim

    while true; do
        read -p "Do you want to install plugin? [y/n]" yn
        case $yn in
            [Yy]* ) echo "Install Neovim Plugin"; nvim +PlugInstall +qall; break;;
            [Nn]* ) echo "You can install plugin using :PlugInstall"; break;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    mkdir -p ~/.config/nvim/snippets
    ln -sf ${PWD}/vim/snippets/* ${HOME}/.config/nvim/snippets/

else
    if [[ "$(which nvim)" == "/usr/local/bin/vim" ]];
    then
        echo "Already Installed Vim!"
    else
        echo "Install Vim..."
        brew install vim
    fi

    VIM_PLUG=${HOME}/.vim/autoload/plug.vim

    if [ -e "$VIM_PLUG" ];
    then
        echo "Already Installed Vim-Plug"
    else
        echo "Install vim-plug[https://github.com/junegunn/vim-plug] for Vim"
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi

    echo "Create Symbolic link vimrc"
    sed -i -- 's/~\/.config\/nvim\/init.vim/~\/.vimrc/g' ${PWD}/vim/vimrc
    ln -sf ${PWD}/vim/vimrc ${HOME}/.vimrc

    while true; do
        read -p "Do you want to install plugin? [y/n]" yn
        case $yn in
            [Yy]* ) echo "Install Vim Plugin"; vim +PlugInstall +qall; break;;
            [Nn]* ) echo "You can install plugin using :PlugInstall"; break;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    mkdir -p ~/.vim/snippets
    ln -sf ${PWD}/vim/snippets/* ${HOME}/.vim/snippets/
fi

