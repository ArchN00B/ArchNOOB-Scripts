#!/usr/bin/env bash

# install starship

sudo pacman -S starship --noconfirm --needed 
# install Fira Nerd Font 
wget -P font https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
cd font 
unzip FiraCode.zip 
rm -r FiraCode.zip 
sudo mv * /usr/share/fonts && cd .. && rm -r font

file='star.txt'
while read line; do
echo $line >> ~/.bashrc
done < $file 

source ~/.bashrc
cp -r .config/starship.toml ~/.config/

 
