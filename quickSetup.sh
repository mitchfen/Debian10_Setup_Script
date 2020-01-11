#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install ranger vim qbittorrent vlc keepassxc psensor feh zsh xfce4-terminal neofetch htop i3 xfce4-screenshooter breeze-cursor-theme git wget curl nemo build-essential lxappearance snapd ffmpeg -y

ranger --copy-config=all

cd ~/Downloads && git clone https://github.com/mitchfen/configs.git
cd configs
mv .mitchBar.conf ~/
mv .vimrc ~/
mv config ~/.config/i3
mv .zshrc ~/
cd .
sudo rm -r configs

sudo snap install spotify
sudo snap install code --classic

sudo update-grub
sudo apt autoremove -y
apt list --installed
