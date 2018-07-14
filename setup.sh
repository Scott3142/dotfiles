#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

sudo pip install py3status
sudo apt -y install i3 i3status i3lock
sudo apt -y install neovim
sudo apt -y install fish
sudo apt -y install curl

sudo apt -y install terminator

sudo cp lock /bin/

sudo apt -y install spotify-client

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tomasr/molokai.git
cp -r plugged molokai/colors ~/.config/nvim/

sudo apt-get install atom

chsh -s /usr/bin/fish
