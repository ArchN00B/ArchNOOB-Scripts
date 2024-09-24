#!/usr/bin/env bash

# install starship

printf "%s\n" " Installing Starship."
[ -f x86_64.txt ] && sudo pacman -S - < x86_64.txt --noconfirm --needed 

# install Fira Nerd Font 
wget -P FiraCode https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip

[ -f FiraCode/FiraCode.zip  ] && cd FiraCode
unzip FiraCode.zip && rm -r FiraCode.zip 
cd .. && sudo mv -vf FiraCode /usr/share/fonts/ 
[ -f ~/.bashrc ] && cp  ~/.bashrc ~/.bashrc.bak."$(date +"%Y%m%d_%H%M%S")"
[ -f ~/.bashrc ] && \
echo '
#including starship
eval "$(starship init bash)" ' >> ~/.bashrc && source ~/.bashrc

[ -f .config/starship.toml ] && cp -r .config/starship.toml ~/.config 


 
