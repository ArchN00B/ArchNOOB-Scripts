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

# printing to the screen using color
printf "%s\033[34mChecking FOR UPDATED FILES ONE REPO\033[m\n"

# Checking for updated files on repo
git pull

# Adding edited files to repo . means pwd
git add .
sleep 1

# Checking the status of edited files
git status

# Printing to the screen with color
printf "%s\033[34mADDING EDITED FILES TO REPO MAKE YOUR COMMIT\033[m\n"

# Read user input very important to add commit or it failed to add edited files to repo
read input

# Adding the commit to repo
git commit -m "$input"

# Printing color to the screen 
printf "%s\033[34mFINISHING UP ALMOST DONE\033[m\n"

# Pushing edited files to master repo
git push -u origin master





