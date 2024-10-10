#!/usr/bin/env bash 
#set -e
##################################################################################################################
# Author 	: ArchN00B
# Website   : https://www.github.com/ArchN00B
##################################################################################################################
#
#   IT'S ALL IN YOUR HANDS
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

printf "%s\033[34m Checking for updated files on the repo\n"

git pull

git add .
sleep 3
git status

printf "%s\033[34m Adding files to repo add your commit\n"

read input
git commit -m "$input"

printf "%s\033[34m Finishing up almost done\n"
echo $USER

git push -u origin master





