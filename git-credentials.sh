#!/usr/bin/env bash
#set -e
##################################################################################################################
# Author 	: ArchN00B
# Website   : https://www.github.com/ArchN00B
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

project=$(basename `pwd`)

echo
tput setaf 5
echo "################################################################"
echo "################### Start"
echo "################################################################"
tput sgr0
echo

username="ArchN00B" # username here
email="archn00b2024@gmail.com" # email here

githubdir="" # Place your github name here 

echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/$githubdir/$project"
echo "-----------------------------------------------------------------------------"

git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "$username"
git config --global user.email "$email"
git remote set-url origin git@github.com:$githubdir/$project
echo
tput setaf 6
echo "################################################################"
echo "################### End"
echo "################################################################"
tput sgr0
echo
