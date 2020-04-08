#!/bin/bash

#Notes - you use Fish theme gitstatus

#sudo add-apt-repository ppa:gnome-terminator
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

cp updatepc /home/scott/
chmod +x /home/scott/updatepc
bash /home/scott/updatepc

sudo apt -y install feh
sudo apt -y install py3status
sudo apt -y install i3 i3status i3lock
sudo apt -y install git

cp git.conf /home/scott/.gitconfig

sudo apt -y install neovim
sudo apt -y install fish
sudo apt -y install curl
sudo apt -y install deluge

sudo apt -y install terminator

sudo cp lock /bin/

#sudo apt -y install spotify-client

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tomasr/molokai.git
cp -r plugged molokai/colors ~/.config/nvim/

#sudo apt-get install atom
sudo snap install atom --classic

chsh -s /usr/bin/fish

git submodule update --recursive --remote

chmod +x install
chmod +x dotbot/bin/dotbot

rm -ri /home/scott/Desktop/ /home/scott/Documents/ /home/scott/Music/ /home/scott/Pictures/ /home/scott/Public/ /home/scott/Templates/ /home/scott/Videos/ /home/scott/Downloads/
mkdir -p /home/scott/dl /home/scott/code/repos

curl -L https://get.oh-my.fish | fish
omf install gitstatus

rm /home/scott/.local/share/omf/init.fish
