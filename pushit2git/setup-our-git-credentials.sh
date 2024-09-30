#!/usr/bin/env bash
#set -e
##################################################################################################################
# Author 	: ArchN00B
# Website   : https://www.github.com/archn00b
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
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

echo
tput setaf 3
echo "################################################################"
echo "################### ADDING CREDINTALS TO GITHUB"
echo "################################################################"
tput sgr0
echo

echo "################################################################################"
echo "##### ADD YOUR PERSONAL TOKEN KEY ONCE FOR PASSWORD" 
echo "################################################################################"

# VARIBALES 
username=""
email=""

git config --global pull.rebase false
git config --global push.default simple
git config --global credential.helper store
git config --global user.name "$username"
git config --global user.email "$email"

echo
tput setaf 3
echo "################################################################"
echo "########  CREDENTIALS STORED IN .GIT-CREDINTIALS"
echo "################################################################"
tput sgr0
echo