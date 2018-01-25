#!/bin/bash

sudo add-apt-repository ppa:gnome-terminator
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

sudo apt -y install i3 i3status i3lock
sudo apt -y install neovim
sudo apt -y install fish

sudo chsh -s /usr/bin/fish

sudo apt -y install terminator

sudo cp lock /bin/

sudo apt -y install spotify-client
