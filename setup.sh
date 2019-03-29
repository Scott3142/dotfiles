#!/bin/bash

<<<<<<< HEAD
#sudo add-apt-repository ppa:gnome-terminator
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
=======
sudo add-apt-repository ppa:gnome-terminator
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
>>>>>>> f9bf2a75d42d549500cc1efc2b86838d97c078c5

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

<<<<<<< HEAD
sudo apt -y install py3status
=======
sudo pip install py3status
>>>>>>> f9bf2a75d42d549500cc1efc2b86838d97c078c5
sudo apt -y install i3 i3status i3lock
sudo apt -y install git
sudo apt -y install neovim
sudo apt -y install fish
sudo apt -y install curl

sudo apt -y install terminator

sudo cp lock /bin/

#sudo apt -y install spotify-client

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tomasr/molokai.git
cp -r plugged molokai/colors ~/.config/nvim/

sudo apt-get install atom

chsh -s /usr/bin/fish

chmod +x install
chmod +x dotbot/bin/dotbot

