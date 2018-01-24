#!/bin/bash

sudo add-apt-repository ppa:gnome-terminator

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

sudo apt install i3 i3status
sudo apt install neovim
sudo apt install fish

sudo chsh -s /usr/bin/fish

sudo apt install terminator

sudo cp lock /bin/
