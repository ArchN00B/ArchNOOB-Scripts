#!/usr/bin/env bash 
#set -e
##################################################################################################################
# Author    : ArchNoob 
# Website   : https://www.github.com/ArchN00b
##################################################################################################################

##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################
# Setting script PATH 
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
##################################################################################################################

file="install.txt"

for pkg in $(cat $file)
do
	if pacman -Qi $pkg &> /dev/null; then
        tput setaf 1
        echo "#################################################################"
        echo "######### $pkg in pkg.txt already installed. "
        echo "#################################################################"
        echo
        tput sgr0
    else
        tput setaf 3
        echo "#################################################################"
        echo "######### $pkg in pkg.txt is being installed. "
        echo "#################################################################"
        sudo pacman -S --noconfirm --needed $pkg
        echo
        tput sgr0        
    fi
done
