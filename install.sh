#!/bin/bash

echo "====> Installing Neovim"

case "$(uname -s)" in

  Darwin)
    echo 'Mac OS X'
    brew install neovim/neovim/neovim python3 ctags the_silver_searcher mactex
    ;;

  Linux)
    echo 'Linux'
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository -y ppa:neovim-ppa/unstable
    sudo apt-get update -y
    sudo apt-get install -y neovim python3-dev python3-pip exuberant-ctags latexmk
    ;;
  *)
    echo 'OS not detected'
    ;;
esac

sudo pip3 install --upgrade pip neovim

echo "====> Downloading vimfiles"
mkdir ~/.config
git clone https://github.com/guilhermebr/vimfiles.git ~/.config/nvim

echo "====> Installing plugins"
nvim +PlugInstall +qa! && echo "Done! :)"
